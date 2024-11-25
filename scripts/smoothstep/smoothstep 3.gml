function smoothstep(edge0, edge1, x)
{
    x = clamp((x - edge0) / (edge1 - edge0), 0, 1);
    return x * x * (3 - 2 * x);
}
