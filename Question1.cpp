class Foo {
private: 
    mutex secondLock, thirdLock;
public:
    // Constructor
    Foo() {
        secondLock.lock();
        thirdLock.lock();
    }


    void first(function<void()> printFirst) {
        
        // printFirst() outputs "first". Do not change or remove this line.
        printFirst();
        secondLock.unlock();
    }

    void second(function<void()> printSecond) {
        secondLock.lock();
        // printSecond() outputs "second". Do not change or remove this line.
        printSecond();
        thirdLock.unlock();
    }

    void third(function<void()> printThird) {
        thirdLock.lock();
        // printThird() outputs "third". Do not change or remove this line.
        printThird();
    }

   
};
