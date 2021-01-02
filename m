Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7BB492E88B7
	for <lists+linux-man@lfdr.de>; Sat,  2 Jan 2021 22:42:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726832AbhABVlJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 2 Jan 2021 16:41:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726667AbhABVlJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 2 Jan 2021 16:41:09 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36E23C0613C1
        for <linux-man@vger.kernel.org>; Sat,  2 Jan 2021 13:40:28 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id d26so27086126wrb.12
        for <linux-man@vger.kernel.org>; Sat, 02 Jan 2021 13:40:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ZaBkmPCL01CW3HZeovfBB5AWa+zkEkLjpwFZ0fh+c+w=;
        b=F+J/6PtOGH4KPeP8xTseGcBIWUhhy4R6dpwMshCkE4MvLvjPoh50MAe9iQ+36rrk37
         QiQ+f3nIQ7GpSH3/nm4WLtT0zx5NFERg2N+Temnh86h7hWOwJSoP3hheF0B50BBrIMuN
         wkP4n7hYpnN4SauekUPEvow+0htmK0kx9jxvrL4nSGOm1VN6lQxJhI6eoULOURni5+Nh
         MLHu6RWvXPlJoMrPwP5L/D+ecnSdfG/H1Mul4/2V7ovrStu6ieb3Ag5/dAZClUnQQs1O
         p9YEdz/W60oY4qynXeXo1h7/huTkVKJsEn5rMMqTeJHMewTWofy7CryxDntcNFFBmHwD
         igsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ZaBkmPCL01CW3HZeovfBB5AWa+zkEkLjpwFZ0fh+c+w=;
        b=kM7cEEmlD337nsiMgE1Vab3jTMmkCJLMd/hyleu+LidK38M394eqLqLCEUThUA4aYk
         oC2tNRCZ9mXWsDHZXEv2RCSXtJdY+Qx8SV2YQU8ywx98GJBNuG7nqyDCzboY9MDF2drs
         CWsH8U8Jh1JbRGxMXFDIPystDMK18FLZl6h0TClnrHOHYN36cS5GzTnqHIsaMrJ4y1TT
         D5pU/765sSvgR+u328bswtsVAreiYtvQgtW0kx5JfKteQHhfROF4ez8uSkkjUI5rtd+t
         vYT1+OMUW4m1ApXHF4BOEpq8QJ5vNObmUUNz5lJAleFnF0Z/g7MyrJ10m0lIU+RTQaM9
         F+LQ==
X-Gm-Message-State: AOAM531HTOdNs00xK7DW4ueOjGZ9RIEuX9D9+1SExfUKHMSdu1ypyqEE
        HGMiF50qE16Gwbn7S3Mb7NH9FXpt624=
X-Google-Smtp-Source: ABdhPJyH9rNL/w7nlzbpkE+dSuITQXBeSqcQcA3gjpP+eSzi+GonC/r88mHPlA/fDN9gp9wOjh0E0A==
X-Received: by 2002:a5d:5385:: with SMTP id d5mr73338232wrv.384.1609623626965;
        Sat, 02 Jan 2021 13:40:26 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id c6sm60881371wrh.7.2021.01.02.13.40.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Jan 2021 13:40:26 -0800 (PST)
Subject: Re: [PATCH] execveat.2: srcfix
To:     mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>
References: <20201230214147.874671-1-alx.manpages@gmail.com>
 <CAKgNAkjf8gS5Av2pzYqt_JHjjnCw-FrjqQicjhr20+MzgsK3Xg@mail.gmail.com>
 <bdda57ff-acdd-9109-5720-ba0db8138d41@gmail.com>
 <993e801d-4126-4e11-5a06-4b92879a7eb7@gmail.com>
 <2f321c87-7e12-2c41-6cd6-ac55024caf0a@gmail.com>
 <6c9c593c-1e89-ce75-c1d0-41e61c98bad7@gmail.com>
 <a6391e7c-6036-33ad-0512-88663307abde@gmail.com>
 <952d3e06-d5fb-db69-f8e0-ee97d5ad2159@gmail.com>
 <4611ff34-2322-1e66-7b14-dc61200404f9@gmail.com>
 <8c66c28d-2ff1-b629-33f9-df057998f80e@gmail.com>
 <40f1140a-496b-5b2b-c1de-4522b1ea5043@gmail.com>
 <CAKgNAkiUZoV1aE10=6ehkqCKwpzrmbYt_fTjGGBEGi9=HZh7Gg@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <31e06e88-808c-2212-9853-f8e7bd9262a8@gmail.com>
Date:   Sat, 2 Jan 2021 22:40:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkiUZoV1aE10=6ehkqCKwpzrmbYt_fTjGGBEGi9=HZh7Gg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

I read everything this time ;)

On 1/2/21 8:59 PM, Michael Kerrisk (man-pages) wrote:
> HI Alex,
> 
> On Sat, 2 Jan 2021 at 17:04, Alejandro Colomar (man-pages)
> <alx.manpages@gmail.com> wrote:
>>
>> Hi Michael,
>>
>> On 1/1/21 11:29 PM, Michael Kerrisk (man-pages) wrote:
>>> Hi Alex,
>> [...]>>>> login.3: group
>>>>
>>>> ffix!!
>>>
>>> Done.
>>>
>>>> The following may help:
>>>>
>>>> $ for p in $(git grep -l '.SH SYN' man?); do \
>>>>      echo "===================== $p"; \
>>>>      man -l $p  2> /dev/null \
>>>>      |sed -n '/^SYNOP/,/DESCR/p' \
>>>>      |sed '/Feat/,$d'; \
>>>>   done \
>>>>   |grep '); *[a-zA-Z_]' \
>>>>   |grep -v -e 'Note:' -e NOTES;
>>>>        int brk(void *addr); void *sbrk(intptr_t increment);
>>>>        set);  ssize_t  pwrite(int  fd,  const  void *buf, size_t
>>>>        long a64l(const char *str64); char *l64a(long value);
>>>>        double fmax(double x, double  y);  float  fmaxf(float  x,
>>>>        float  y);  long  double fmaxl(long double x, long double
>>>>        void  login(const struct utmp *ut); int logout(const char
>>>>               place the result(s); inproc is used to encode  the
>>>>               dress  of  where to place the result(s); inproc is
>>>>               ter(s); procname should return a  pointer  to  its
>>>>               static result(s); inproc is used to decode the pa‐
>>>>               RPC socket(s); rdfds is the  resultant  read  file
>>>>        int wordexp(const char *s, wordexp_t *p, int flags); void
>>>>               sp,MAXUN.UNSIGNED ); where MAXUN.UNSIGNED  is  the
>>>>                                     (SIGEV_THREAD_ID); Linux-specific */
>>>
>>> Thanks. I fixed a few things.
>>>
>>
>> wordexp.3 is still broken.
> 
> Thanks. Fixed now.
> 
>>>>>> I didn't read past that.
>>>>
>>>> Still I didn't read past that :)
>>
>> Later I'll have a look past there :)
> 
> That would be great!

adjtimex.2: compact
getpeername.2: 78-col
kexec_load.2: compact?
msgop.2: compact
rt_sigqueueinfo.2: Join + compact
sgetmask.2: compact
subpage_prot.2: Join
vm86.2: compact

circleq.3, list.3, slist.3, tailq.3, stailq.3: group?
des_crypt.3: group
drand48_r.3: Join
error.3: group
ether_aton.3: group
exec.3: consistency with commas; execvpe can be joined
fseeko.3: compact

resolver.3: group?
rewinddir.3: compact headers
rpc: 78-col
	CLGET_SERVER_ADDR  struct sockaddr_in  // get server's addre
	ss
rtnetlink.3: group or compact; 78-col
scandir.3:
	scandir(): move 'filter' and 'compar' 1 char to the right
	  so that parentheses are not aligned and confuse.
	  It still fits 1 char to the right but not to for a 78-col.
	group?
	scandirat(): ffix!!: namelist can be joined
setaliasent.3: move more to the right
shm_open.3: compact
sigpause.3: compact
sigset.3: group
strstr.3: compact #define & #include
termios.3: group even more?
timegm.3: compact
unlocked_stdio.3: Join fread_unlocked(3)? Or not?
xdr.3: wsfix: g/) (/s//)(/
	(See if there are any other pages with this
	 that I may haven't seen.)

man.7: group or compact
rtnetlink.7: 78-col
sigevent.7: s/) (/)(/
	If you move the comments a few chars to the right (3<=x<=6),
	  you will compact one line

Also, curiously execveat(2), which is the one that started all this,
didn't look bad :p
So we'll have to grep for .nf/.fi too after this.



Things to note for other patches:

isw*.3: Rewrite into one page similar to isalpha.3?
	Does it really need so many pages?
recno.3: Review: no APIs
string.3: What is the criterion for functions to be there?
	Also, there are functions which are already documented
	  in their own pages (see strcpy(3))
	Some others don't appear there (see memcpy(3)
	  eventhough they are in string.h.



Cheers,

Alex


> 
> Cheers,
> 
> Michael
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
