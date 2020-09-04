Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7CEEB25DDFA
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 17:40:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726555AbgIDPkm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 11:40:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726340AbgIDPkj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 11:40:39 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 309A9C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 08:40:37 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id m6so7223778wrn.0
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 08:40:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=9faQHpLPrkCoOa4VyM0c6CXjs77CufajZHbGxyuIU3I=;
        b=RWXYFR2gsEPFsfJ0d4NflURMUoknkRHiwafLkT4/b62Af3hDsituBLhhy9dY2yCHcM
         fHLMGIJV0Bhj9hzwoVwM4MxYFz2WWbyQxje270fC7gobJ7IUk+T1Tegg6Zv1O4CC7gt2
         MoVtEqX4Hvtnil7c+mNbjedVvdooOli20ZQyYcN/t/thAz3KMQKOVQxswF/q++6adHV3
         cCt4bmTWiizIRqzwkGS6GgW0eh4XrEREISxU8UnlyqB5nIkzutHPSWkYIqtgxYZ5K8X3
         gcS2jNH6S3tCAtI+XQj03mNb9iTp4ZyxBw2zEne5wfemfayZH84LX25MukZ3Pk2o0pMu
         t68Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=9faQHpLPrkCoOa4VyM0c6CXjs77CufajZHbGxyuIU3I=;
        b=trwgo4t6lHGRYKB+4bq3FWMIAQJBEZPFIzEjp7cLAB1MslFfeeYuo1c490DLR19aaS
         AOgb2T6Z77X8FBqAJypnspIr6IWBqoE6wU7onFS1GkNIWANLh8zUGe0p2kC/fhL0QoVP
         5J3j0JNmdTi/Suvpa/jUtwnAs8o4z6BQyodw7siOfzJVZ9KGbn8/bTTdMDlc5KV00jCB
         XNOXfL19J7Fc59OSzn52ZKN7xt0KoFL/DBNxCZNiMFxWC13wrYL+Fa86joLD5oYdW6q6
         UORg6bJz/BiAHMmjPv/gwlUeX2qyEpbjCo6QrlPYjyBZ3xo0qZdapz9H7AkaG70ZYFIb
         B+HQ==
X-Gm-Message-State: AOAM530aguqZ8zqD68OwzxojyIfAebiFXq3kgBcF0kqun2krSYQ6HyEu
        ayJP8kah+E7E6uUw2CBwbYU=
X-Google-Smtp-Source: ABdhPJyixRm5ovIGJUwFQgamAm8LkGIIt3W7yIFW38WmWOlRcBUIr0i4xLSQXGeirpsula1nClSKBw==
X-Received: by 2002:a05:6000:7:: with SMTP id h7mr8685927wrx.16.1599234035882;
        Fri, 04 Sep 2020 08:40:35 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id v4sm11216414wml.46.2020.09.04.08.40.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 08:40:35 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH (2) 34/34] unix.7: Use sizeof consistently
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <da654939-dcc2-e1f8-65d9-a873325d4609@gmail.com>
 <aec8bb20-6693-f876-0e2e-5574bd3b7af6@gmail.com>
 <8458b842-7d4b-f19b-c596-7f529dd48ba6@gmail.com>
 <497bc4f4-31f5-91a5-8bc4-469e22b26502@gmail.com>
 <8160510c-4d9e-7f30-e810-648b0b58a986@gmail.com>
 <d7db8e23-8e86-10ee-f221-30d7e3bd657e@gmail.com>
 <87d5b09a-a3c8-622c-d731-5d42644a5f24@gmail.com>
 <61d2f2f9-08d0-9f1a-9642-ae56b3f4b61d@gmail.com>
 <4bb9e639-83ee-ede0-f6ad-dfc16787d358@gmail.com>
 <3c25bbda-bc90-1364-77cd-2c637f09d611@gmail.com>
 <af5bf8ce-8bb8-3819-a8e4-1454be92097f@gmail.com>
 <4f0ff40c-2a63-736d-698f-0efc436c3678@gmail.com>
 <5343bbd1-b03f-29bf-2def-c27ba3a3616e@gmail.com>
 <4eba3ee9-bb6a-810f-55ae-7f0d76d446a7@gmail.com>
 <82aa16c3-60fe-68b3-103f-6d438563f3c2@gmail.com>
 <6e6d6796-32e0-9cc1-1e6c-4abb0b702499@gmail.com>
 <718db444-6679-224e-c649-6dd219b9db3c@gmail.com>
 <36a9ef8e-6fd9-e074-2a19-d8529f425501@gmail.com>
 <70efd632-15b4-0d18-8c05-7a4ea7fe2353@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <383dffcb-e51e-9d53-42da-1f4edcbb9b35@gmail.com>
Date:   Fri, 4 Sep 2020 17:40:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <70efd632-15b4-0d18-8c05-7a4ea7fe2353@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/4/20 5:08 PM, Alejandro Colomar wrote:
>>From 63fa45f7c45c49df2eeab0735342de9304507e46 Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Thu, 3 Sep 2020 22:24:12 +0200
> Subject: [PATCH 34/34] unix.7: Use sizeof consistently
> 
> Use ``sizeof`` consistently through all the examples in the following
> way:
> 
> - Use the name of the variable instead of its type as argument for
>   ``sizeof``.
> 
> 	Rationale:
> 	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man7/unix.7 | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/man7/unix.7 b/man7/unix.7
> index 86a35be7b..30b0e754d 100644

Thanks. Patch applied.

Cheers,

Michael




> --- a/man7/unix.7
> +++ b/man7/unix.7
> @@ -948,7 +948,7 @@ main(int argc, char *argv[])
>       * the structure.
>       */
> 
> -    memset(&name, 0, sizeof(struct sockaddr_un));
> +    memset(&name, 0, sizeof(name));
> 
>      /* Bind socket to socket name. */
> 
> @@ -956,7 +956,7 @@ main(int argc, char *argv[])
>      strncpy(name.sun_path, SOCKET_NAME, sizeof(name.sun_path) \- 1);
> 
>      ret = bind(connection_socket, (const struct sockaddr *) &name,
> -               sizeof(struct sockaddr_un));
> +               sizeof(name));
>      if (ret == \-1) {
>          perror("bind");
>          exit(EXIT_FAILURE);
> @@ -1082,7 +1082,7 @@ main(int argc, char *argv[])
>       * the structure.
>       */
> 
> -    memset(&addr, 0, sizeof(struct sockaddr_un));
> +    memset(&addr, 0, sizeof(addr));
> 
>      /* Connect socket to socket address */
> 
> @@ -1090,7 +1090,7 @@ main(int argc, char *argv[])
>      strncpy(addr.sun_path, SOCKET_NAME, sizeof(addr.sun_path) \- 1);
> 
>      ret = connect(data_socket, (const struct sockaddr *) &addr,
> -                   sizeof(struct sockaddr_un));
> +                   sizeof(addr));
>      if (ret == \-1) {
>          fprintf(stderr, "The server is down.\en");
>          exit(EXIT_FAILURE);
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
