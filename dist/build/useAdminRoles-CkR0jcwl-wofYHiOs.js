import{u as m,s as p,b2 as d,r as f}from"./strapi-I-W6CBYW.js";const y=(o={},r)=>{const{locale:t}=m(),s=p(t,{sensitivity:"base"}),{data:e,error:a,isError:n,isLoading:c,refetch:l}=d(o,r);return{roles:f.useMemo(()=>[...e??[]].sort((u,i)=>s.compare(u.name,i.name)),[e,s]),error:a,isError:n,isLoading:c,refetch:l}};export{y as u};
