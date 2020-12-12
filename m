Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E5FC82D88DE
	for <lists+linux-man@lfdr.de>; Sat, 12 Dec 2020 19:02:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2439700AbgLLSCV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Dec 2020 13:02:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727128AbgLLSCN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Dec 2020 13:02:13 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67C22C0613CF
        for <linux-man@vger.kernel.org>; Sat, 12 Dec 2020 10:01:33 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id 3so11522858wmg.4
        for <linux-man@vger.kernel.org>; Sat, 12 Dec 2020 10:01:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=mLpU8QOJ23FOJHi6n3pDcIJJCkROk9HwEFlr58VPTt8=;
        b=RJmLCSotQ31Sb7A4N8xUNUY824BnrIWb014IFTHVopNiguTjBeHtJsgdy5ImPoaBCP
         +qzeRD3yJja1IPpFqKC6Ns6LDcZ5MJFRYcyHg7aqJFDu580AMYmWRQsA1qDvfmt67fK0
         jQ5KgOKp9sFBr2VSsACmocndVSUgBpiIWPTfOpyC1aKKGns0ggyIGRopAOhALN8lz49i
         Myvn0iFOncOQ2L8RqEsnhNIuZSmCIayXuJXCjPlCtbvAhTjhTYZmPXqhSl4ZF5I0KqxP
         mrTpEZy6FTFCXNC/toz/Xyu6fB5kvaqH1WykrFkqOMR/dgKjvNKN3r9lZqgKbVryd7Ut
         5oVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=mLpU8QOJ23FOJHi6n3pDcIJJCkROk9HwEFlr58VPTt8=;
        b=tAshTwzwTtQGqbv/chZj8BWIQMZohq0BeePIPuGHSyAnoQEPMz5AFg0YKqqO246R0A
         f7Z3Rkcx8ac2l6GCtSh+NFscZg8jVLMY7NpsJoYE7afHjvUoFUOZnYb9La4aezN8eMq0
         NPVmWcY6k1CTtjgAIHF27YiiXHJzhZ2J0oLsVDaz4AXJYV1kaYTg1Ii7IXefnMagl2Aw
         DG2/x67MLAHB5kxUvike5f38lwNMlkYRUe+ZJxK8gX1Stnv3z/eXcQtStVQ8BD2HmjvC
         CBWa3WKDKn39Woub2G8Ccl9tYRFXfL8IfRQ+JgpS4nrBGSC5w6r1z5cIDPvautnqtuOF
         RPpg==
X-Gm-Message-State: AOAM533riqLtJvpfYSXjMOjAm4aGutjAlkvrJ9ZGAKr1frZwbNXRt4an
        zjpZ+rlRsjnqkjkQxNoIE9agd57oWhBwxg==
X-Google-Smtp-Source: ABdhPJxnu8bsd0j40uBFHdrMbWcMwy/L7Q5ibHDhZxGtjMCqBFbn+oZUXyO3XWXnb4PFxw9CAjX/2Q==
X-Received: by 2002:a1c:e901:: with SMTP id q1mr19707597wmc.148.1607796092075;
        Sat, 12 Dec 2020 10:01:32 -0800 (PST)
Received: from [192.168.0.160] ([170.253.49.0])
        by smtp.gmail.com with ESMTPSA id v7sm20745880wma.26.2020.12.12.10.01.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Dec 2020 10:01:31 -0800 (PST)
Subject: Re: Right margin for code (SYNOPSIS, EXAMPLES, ...)
To:     mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>
References: <1f731252-395b-e8bd-ed5d-cc3b3eeea948@gmail.com>
 <CAKgNAkisA-6-GhYugwFLWp4pZLqHSU7T8unpTt5mibcMzApz4w@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <8d84a00d-cd4d-86b5-9ed0-9357324a824d@gmail.com>
Date:   Sat, 12 Dec 2020 19:01:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkisA-6-GhYugwFLWp4pZLqHSU7T8unpTt5mibcMzApz4w@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hey M,

I guessed it was 80.  Just wanted to make sure while I was writing some
prototypes for cacheflush.2.  Nothing special. :)

Thanks,

Alex

On 12/11/20 10:26 PM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On Fri, 11 Dec 2020 at 22:14, Alejandro Colomar (man-pages)
> <alx.manpages@gmail.com> wrote:
>>
>> Hi Michael,
>>
>> For code, for example function prototypes in SYNOPSIS, do you have a
>> preferred right margin? 80? 72?
> 
> If I understand your question, 80. But what prompts you to ask?
> 
> Thanks,
> 
> Michael
> 
