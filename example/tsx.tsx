// React and TypeScript Feature Coverage Example

import React, {
  useState,
  useEffect,
  useCallback,
  useMemo,
  useRef,
} from "react";

// 1. Props and Type Annotations
type ButtonProps = {
  onClick: () => void;
  label: string;
};

// Functional Component with Props
const Button: React.FC<ButtonProps> = ({ onClick, label }) => (
  <button onClick={onClick}>{label}</button>
);

// 2. Component with State and Event Handling
const Counter: React.FC = () => {
  const [count, setCount] = useState<number>(0);
  const increment = () => setCount(count + 1);

  return (
    <div>
      <h2>Count: {count}</h2>
      <Button onClick={increment} label="Increment" />
    </div>
  );
};

// 3. Context and Provider Pattern
type Theme = "light" | "dark";

interface ThemeContextProps {
  theme: Theme;
  toggleTheme: () => void;
}

const ThemeContext = React.createContext<ThemeContextProps | undefined>(
  undefined,
);

const ThemeProvider: React.FC = ({ children }) => {
  const [theme, setTheme] = useState<Theme>("light");
  const toggleTheme = () => setTheme(theme === "light" ? "dark" : "light");

  return (
    <ThemeContext.Provider value={{ theme, toggleTheme }}>
      {children}
    </ThemeContext.Provider>
  );
};

// 4. Custom Hook
function useTheme() {
  const context = React.useContext(ThemeContext);
  if (!context) {
    throw new Error("useTheme must be used within a ThemeProvider");
  }
  return context;
}

// 5. useEffect and useRef
const Timer: React.FC = () => {
  const [time, setTime] = useState<number>(0);
  const intervalRef = useRef<NodeJS.Timeout | null>(null);

  useEffect(() => {
    intervalRef.current = setInterval(() => {
      setTime((prev) => prev + 1);
    }, 1000);
    return () => {
      if (intervalRef.current) clearInterval(intervalRef.current);
    };
  }, []);

  return <div>Time: {time}</div>;
};

// 6. useMemo and useCallback
const ExpensiveCalculation: React.FC<{ num: number }> = ({ num }) => {
  const calculateFactorial = useCallback((n: number): number => {
    return n <= 0 ? 1 : n * calculateFactorial(n - 1);
  }, []);

  const factorial = useMemo(
    () => calculateFactorial(num),
    [num, calculateFactorial],
  );

  return (
    <div>
      Factorial of {num} is {factorial}
    </div>
  );
};

// 7. Conditional Rendering and Ternary
const UserGreeting: React.FC<{ user: string | null }> = ({ user }) => (
  <h3>{user ? `Hello, ${user}` : "Hello, Guest"}</h3>
);

// 8. Type Assertions and Optional Chaining
const UserProfile: React.FC<{ user?: { name: string; age: number } }> = ({
  user,
}) => {
  return (
    <div>
      <p>Name: {user?.name ?? "Unknown"}</p>
      <p>Age: {user?.age ?? "N/A"}</p>
    </div>
  );
};

// 9. Component with Children
const Container: React.FC = ({ children }) => (
  <div className="container">{children}</div>
);

// Main App Component
const App: React.FC = () => {
  const { theme, toggleTheme } = useTheme();

  return (
    <Container>
      <h1>React with TypeScript Features</h1>
      <button onClick={toggleTheme}>Toggle Theme</button>
      <Counter />
      <Timer />
      <ExpensiveCalculation num={5} />
      <UserGreeting user="Alice" />
      <UserProfile user={{ name: "Bob", age: 25 }} />
    </Container>
  );
};

// 10. Rendering App within ThemeProvider
const Root: React.FC = () => (
  <ThemeProvider>
    <App />
  </ThemeProvider>
);

export default Root;
