# Lab Report: Gaussian Distribution Analysis

## Title: Exploring Gaussian Distributions and Cumulative Distribution Functions

### 1. Aim:
The aim of this practical is to analyze and compare Gaussian distributions and their cumulative distribution functions using MATLAB scripts.

### 2. Theory:
The Gaussian distribution, also known as the normal distribution, is a fundamental concept in probability theory and statistics. It is characterized by two parameters: mean (*μ*) and standard deviation (*σ*). The Gaussian function, defined as:
`exp(-0.5 * ((x - μ) / σ)^2) / (σ * sqrt(2 * pi))` 
describes the probability density of a continuous random variable.

The cumulative distribution function (CDF) provides the probability that a random variable takes a value less than or equal to a given value. For a Gaussian distribution, the CDF is obtained using the `normcdf` function in MATLAB.

### 3. Observation:

#### - `gaussianFunction.m`:
This MATLAB file generates a Gaussian bell curve using the `linspace` function to create a range of *x* values. The resulting plot shows the probability density function for a Gaussian distribution with specified mean (*μ*) and standard deviation (*σ*).

![alt text](lab2-output1-ss.png)

#### - `gaussianFunction2.m`:
    Similar to `gaussianFunction.m`, this script generates a Gaussian function using random *x* values obtained from a standard normal distribution transformed with the desired mean and standard deviation. The use of `randn` ensures the randomness of the generated data points.

![alt text](lab2-output2-ss.png)

#### - `comparision.m`:
    This script generates and compares Gaussian functions with different standard deviations, visualizing the impact of *σ* on the probability density function. The resulting plot illustrates how changing *σ* affects the width and shape of the Gaussian curve.

![alt text](lab2-output3-ss.png)

#### - `gaussian_cdf.m`:
    The script focuses on plotting Gaussian cumulative distribution functions with varying standard deviations. By utilizing the `normcdf` function, the CDFs are visualized for a range of *x* values, providing insights into the probability of observing values below a certain threshold.


### 4. Conclusion:
Through the analysis of the provided MATLAB scripts, we have gained a deeper understanding of Gaussian distributions and cumulative distribution functions. The comparison of Gaussian functions with different standard deviations in `comparision.m` highlights the impact of *σ* on the shape of the probability density function. The exploration of cumulative distribution functions in `gaussian_cdf.m` demonstrates how the probability evolves across different *x* values.

The individual scripts, `gaussianFunction.m` and `gaussianFunction2.m`, showcase different methods for generating Gaussian distributions, one using `linspace` for a systematic approach and the other using `randn` for a random sampling method.

In conclusion, this practical has provided valuable insights into the behavior of Gaussian distributions and cumulative distribution functions, offering a hands-on experience with MATLAB scripts for statistical analysis.
