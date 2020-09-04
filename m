Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4341B25DB16
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 16:12:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730758AbgIDOMs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 10:12:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730585AbgIDNpV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 09:45:21 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70C93C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 06:45:16 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id a17so6796393wrn.6
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 06:45:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ja0cv6hAtfm2BPmP9udAM22wFgJGqBw0cjnTdBQe6SA=;
        b=kOV+Yx+9Sc5FtuFVEp8toxLSQOEcR61jizOZPgpC6oEI/P6rjRohmmXU6YSUuzM5t0
         SOQc/55I50u7YeqifuWFAiG5nMlTIPC+7H2WdXk6nwszP5ZNUoy2Y/HQr/iqBy0cTTNM
         HjXdsY15vXumtE2/rYRkLu7HVH4Wk2mGTloi8Eg2FqeDsKXOja3psx3WquNRdIHZLma9
         Ics1UVi15eUkp9W6dm9xfZMrRnr1BFw2nVqIM80tZ97sHpYFC12Yi6wvn0zKigZ6VP7v
         vmiUeGg5igOZUJ5NjDmWYwUP0NYffnX9DZ5gyGueKRMqFA7UZGOGRbFNzTAAwjEVa6SY
         uLtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ja0cv6hAtfm2BPmP9udAM22wFgJGqBw0cjnTdBQe6SA=;
        b=NHgboOSnHHgd9TPTGqHulagG+rrjFLjmpG/2juhR+7DteVC7cr5C130SPKg6EnBOLP
         Zya2hmnBxnNyVTZfAXavLby5uBdt8ocFcyAEsCoIP4obM4m7o2XymRCgvD135zfnru3u
         A0kgiKjt+uPd6BBw85er1yyD0ykcE6225rsusvuN3pzS476/tmyN1JxGVrmo9xbk9N6I
         ndIPtToBXHoCUPeOoucRJ3aBgda8AvLyRENX03qlJgpnpOhB3AyTjp0dK/0cJjV77tNT
         +X3hJSoIATgLhs8hHMx7dJ30++/7DghjPbvaEAbjnayz/W0xycW01Tk6nQMs7D7/ClEy
         TGow==
X-Gm-Message-State: AOAM533bSQwFitQNIDD/cYXyBtMVK1wZbXE8nAJYkMN5UylsMxcgcceP
        74yISVIolwqbkbviNi/xxR6G2AfLWJM=
X-Google-Smtp-Source: ABdhPJwusoKJ6p7hTf1ucocnlo+/EXz/bJcCRScjGI7AM68Nhm1cnZ5PUcIfqo6hBXPdBO4RmiLbGw==
X-Received: by 2002:adf:8481:: with SMTP id 1mr7362494wrg.231.1599227113389;
        Fri, 04 Sep 2020 06:45:13 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id u6sm10760010wrn.95.2020.09.04.06.45.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 06:45:12 -0700 (PDT)
Subject: [PATCH (2) 11/34] timerfd_create.2: Use sizeof consistently
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <d084b7eb-a691-52e8-4996-5080af0175de@gmail.com>
 <CAKgNAki_wyf7dCShjpAaRLUeuL=+EFZYeVp0fY-EKHyOBW2hRw@mail.gmail.com>
 <d72263bb-7c84-3f33-ee44-a2cac2e2662c@gmail.com>
 <806999b7-8947-d350-2125-f04b69846f37@gmail.com>
 <d3537144-e4da-8359-bc08-4eaf8c7bd059@gmail.com>
 <9fcc512e-a12c-5b28-126f-aaf1854ed290@gmail.com>
 <2b288808-c840-343f-9e56-8097765e5528@gmail.com>
 <876dcc97-8151-7160-5eda-19307f0483c1@gmail.com>
 <462b75ca-bef8-063d-b6ec-d1c845fb1580@gmail.com>
 <d38d3644-698c-41e4-4d6a-5d999c0a3fdd@gmail.com>
 <26629635-bf4c-1279-314d-db92f11adbb7@gmail.com>
 <d38b1e35-2471-09a1-ad49-4509a30fd14a@gmail.com>
 <edf9e2a1-0612-437d-9fbf-e255e0d1df97@gmail.com>
 <c2636c53-e81c-881a-2938-08871e1b176c@gmail.com>
 <257c9374-3253-9091-c116-045ee16590c0@gmail.com>
 <40ba6e68-c2f6-649c-2225-6037e3c0c077@gmail.com>
 <afec3122-19aa-02f4-0850-7000552ceb95@gmail.com>
 <da654939-dcc2-e1f8-65d9-a873325d4609@gmail.com>
Message-ID: <aec8bb20-6693-f876-0e2e-5574bd3b7af6@gmail.com>
Date:   Fri, 4 Sep 2020 15:45:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <da654939-dcc2-e1f8-65d9-a873325d4609@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From d347c933a8c253028f8f76c4170b65b85ce7d605 Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Thu, 3 Sep 2020 21:42:28 +0200
Subject: [PATCH 11/34] timerfd_create.2: Use sizeof consistently

Use ``sizeof`` consistently through all the examples in the following
way:

- Use the name of the variable instead of its type as argument for
  ``sizeof``.

	Rationale:
	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/timerfd_create.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/timerfd_create.2 b/man2/timerfd_create.2
index 67a13dba3..fd4acf3e9 100644
--- a/man2/timerfd_create.2
+++ b/man2/timerfd_create.2
@@ -700,8 +700,8 @@ main(int argc, char *argv[])
     printf("timer started\en");

     for (tot_exp = 0; tot_exp < max_exp;) {
-        s = read(fd, &exp, sizeof(uint64_t));
-        if (s != sizeof(uint64_t))
+        s = read(fd, &exp, sizeof(exp));
+        if (s != sizeof(exp))
             handle_error("read");

         tot_exp += exp;
-- 
2.28.0
