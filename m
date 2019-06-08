Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 14E8539C2E
	for <lists+linux-man@lfdr.de>; Sat,  8 Jun 2019 11:35:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726626AbfFHJfO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jun 2019 05:35:14 -0400
Received: from mail-ed1-f43.google.com ([209.85.208.43]:44958 "EHLO
        mail-ed1-f43.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726590AbfFHJfO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jun 2019 05:35:14 -0400
Received: by mail-ed1-f43.google.com with SMTP id k8so6205251edr.11
        for <linux-man@vger.kernel.org>; Sat, 08 Jun 2019 02:35:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=0RuTbV3+xsY8RTj1+NZHTEJbwqY0hi0IYYTKYRcBtWs=;
        b=SPkM8cI4bkQ60MBgMLjDeq4v4sZURSG5+vcnv4+zHLb3e7oSQppfnMFuwh8le4V4di
         LAguh0J1lulzkW/oyU0Qc5tzgb1CB89sd2OjYJAPFHedCk06VsVE8xpjdH/DJ6r7Ss8o
         FGFu9aL+1R3O8R3ZYUhWXHs9SvFV4VplqMJ7vCGEziW8XN9rZVG+yMav8KudK/ivyzoc
         6+la7T3vcpE0AxLR1P6EdD2eWMClLJwJa9AA7K0vGII9dS6glaDr2xx3SX/BAyKj7BEg
         CGw0VEHZMdJThHpB0Oi/Ie14J3x+t9yCN7E8F3XHeldzKrcfowZVY+hvhIYKk7Fsa/Vi
         qcjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=0RuTbV3+xsY8RTj1+NZHTEJbwqY0hi0IYYTKYRcBtWs=;
        b=q1F1cmD1MOuco5IH6wO9Mh8g+/nE9EAl/j/HZq4Ek/Lt1LkzYjAQYIz2jI6l1uEV35
         8wLaWfkmSbq7TD+HjP9B3TC4MFnU9EwxaYqVvtGA6dPATLa9ZjcEoT9fR+a6ugdN/PNm
         VmTq16Jt+pAIzonA5+cqAWYz7s15i2viR+CuMgqz2d1yaV4SZmvkCRLyWzcD7QLlj3nv
         YP3h9qUb/2yFDJUjwcNBSx3ioutNHX/Wq83BeF7BZfzzS8qxjjbxFvTlTQYSLtRNCaLl
         LJGMRWdvAmBpRSnnFhv6rMe2/+aekbu7H2NC3HP+ymoOBK3BEdoilOb+ohxYnHY72mv4
         2zwQ==
X-Gm-Message-State: APjAAAXHzAo3v0UZCepxatYsUaQDYAQ15DAU329RSQtyfkt5e95ks5Ya
        PqekgwQcIezDd9FzPWjBbZHZj4mq
X-Google-Smtp-Source: APXvYqzX8ia4vtryARaF0CIyBArGW/+tQO0IBRZAvUJ9nW560uWaDaDatDCvGyENN5oI8GUE8wH6rA==
X-Received: by 2002:aa7:c919:: with SMTP id b25mr26484990edt.274.1559986511411;
        Sat, 08 Jun 2019 02:35:11 -0700 (PDT)
Received: from [10.211.3.146] ([185.12.128.181])
        by smtp.gmail.com with ESMTPSA id i33sm1202936ede.47.2019.06.08.02.35.09
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Jun 2019 02:35:10 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: An error in the strcat (3) man page
To:     Eric Sanchis <eric.sanchis@iut-rodez.fr>
References: <CAA=uBcE2cOCr8oNyTU=RWFRnY0nk8nx7hTyZieYowyPkWz5_Ww@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <0e991a68-f52f-8dc4-8d35-426e9a4fc027@gmail.com>
Date:   Sat, 8 Jun 2019 11:35:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAA=uBcE2cOCr8oNyTU=RWFRnY0nk8nx7hTyZieYowyPkWz5_Ww@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Eric,

On 4/6/19 6:34 PM, Eric Sanchis wrote:
> Dear Maintener,
> 
> I would suggest removing the EXAMPLE part for the following reasons:
> 
> 1) There is no evidence that in real projects the use of functions
> like stpcpy has a great influence on the overall performance. To my
> knowledge there is no statistical study made on actual C projetcs
> which demonstates that point.

I don't know of any such studies, but I'm sure some people do
naively misuse strcat/strncat without realizing the
performance implications, especially if they come from a
language with better string types. So, I think the example is
worthwhile.

> 2) Optimization should come after safety. For example, the mystrcat()
> function proposed by Joel Spolsky:
> 
> char* mystrcat( char* dest, char* src )
> {
>       while (*dest) dest++;
>       while (*dest++ = *src++);
>       return --dest;
> }
> has the same safety level than strcat (NULL pointer, space problem,
> etc.). It cannot detect string truncation and does not prevent from
> buffer overflow.
> 
> 3) Examples used to promote functions like stpcpy or mystrcat are
> often meaningless. For example,
> 
>    a) the example used by Joel:
> 
>      char bigString[1000];     /* I never know how much to allocate... */
>      bigString[0] = '\0';
>      strcat(bigString,"John, ");
>      strcat(bigString,"Paul, ");
>      strcat(bigString,"George, ");
>      strcat(bigString,"Joel ");
> 
> concatenates only a few little strings. Running in O(n2) is not a big problem.
> 
>    b) the example illustrating the strcat function man page is artificial:
> 
> int
> main(int argc, char *argv[])
> {
> #define LIM 4000000
>      int j;
>      char p[LIM];
> 
>      p[0] = '\0' ;
> 
>      for (j = 0; j < LIM; j++) {
>          strcat(p, "a");
>      }
> }
> 
> The use of memset would be more appropriate:
>      memset(p,'a',LIM-1) ;
>      p[LIM-1] = '\0' ;
> 
> 4) Last, but not least: it produces a buffer owerflow (off-by-one
> error). A typical trap of strcat.
> 
> The program below shows the problem:
> 
> #include <string.h>
> #include <stdio.h>
> 
>         int
>         main(int argc, char *argv[])
>         {
>         #define LIM 4
>             char p[LIM];
>         int j ;
> 
>             p[0] = '\0';
> 
>             for (j = 0; j < LIM; j++)
>                 strcat(p, "a");
>         printf("(j=%d)  p='%s' -- psize : %d  -- plen=%u\n", j,p,LIM,
> (unsigned int) strlen(p)) ;
> 
>             return 0 ;
>         }
> 
> Execution:
> 
> $ prog
> (j=4)  p='aaaa' -- psize : 4 -- plen=4
> $
> 
> p should be 'aaa'.

I asked myself who added that code, and took a look at the Git
history

<blush> :-}

I fixed that as follows:

[[
diff --git a/man3/strcat.3 b/man3/strcat.3
index 7d0998fc1..9263c7ec9 100644
--- a/man3/strcat.3
+++ b/man3/strcat.3
@@ -209,7 +209,7 @@ main(int argc, char *argv[])
  {
  #define LIM 4000000
      int j;
-    char p[LIM];
+    char p[LIM + 1];    /* +1 for terminating null byte */
      time_t base;

      base = time(NULL);
]]

> To conclude, I would suggest using the strntcat() or strtcat()
> functions for concatenation [cf. tarball]. The first function doesn't
> allow truncation (nt: no trunc); the second allows truncation.
> They never
>     - produce bad-formed strings or buffer overflow.
>     - unexpectedly truncate strings.
> They respect sound design principles:
>     - consistency: in similar situation, behaviors are similar.
>     - neutrality: after an error, input data are not modified.
>     - robustness: they perform correctly under normal and unexpected situations.
> They are easy to use.
> 
> I hope you will test them.

Yes, but these manual pages are about documenting the standard C
library...

Thank you for the bug report.

Cheers,

Michael
