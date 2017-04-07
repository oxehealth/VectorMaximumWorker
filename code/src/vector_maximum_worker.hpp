/*
Homework exercise
send us code for a "worker" that can find the largest elements
of various input vectors. The input arrives on one thread, and
the answers will be read on another, and the work needs to be
done in a way that avoids the calculation being done on either
calling thread, but using a maximum number of worker threads.
*/

#include <vector>

// Here is the skeleton of the class:
class VectorMaximumWorker
{
public:
    // Construct the vector maximum worker with
    // the maximum number of threads it can run.
    VectorMaximumWorker(std::size_t n);

    // Submit a vector to calculate the maximum of.
    void Submit(const std::vector<float> & v);

    // Retrieve a result.
    // Blocks until a result is available.
    // Returns the maximum of the latest vector
    float BlockingGetResult() const;
};
