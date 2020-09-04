Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 51FBC25DCBF
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 17:05:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730301AbgIDPFT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 11:05:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729942AbgIDPFT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 11:05:19 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FDC0C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 08:05:18 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id j2so7071123wrx.7
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 08:05:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=9CFNhhb6MvgN/Xg42jNOeB691e1jg76wBxoiDOxX9tM=;
        b=mkUOrL4xp7JVBAWrvlP23Utn1yd51nlHRsHO2LhJOk7uZaKf+VQyE0IGXeDRCueckL
         PyeCuzC0N3oBI0XgUvfHPP5T4Vbjs35DVr1X8bb63idRjQf0jxpTozECi+lFJkUXuTkR
         fS+IuMQCZLejaMC5rMXvqGDr2xTHIOkPtoDBU2e148jHjQWFwq+z/tRbDYLS2DOeTk0G
         TWz/mfdbhWIjqTD1UVkgCNjRoOr73DZii54wfcIU3Y0PRXYCrfGsk1YCSciLqqTqJBW4
         sEhgsMUICOnXmt108aT9Ael6H6GyeKTtj0jkrnEbvzMrnxGFX0HbDbLCxvKJmfhBWUVb
         Tvuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=9CFNhhb6MvgN/Xg42jNOeB691e1jg76wBxoiDOxX9tM=;
        b=owAOjsn9s15cO0rXH5g0aJZ5583vIGidV8JqwyxVDlpylaiw6XCOWsKodaCevmIkj4
         3tH/Z/puWzqn2K7tZWCYicaJk50Bro/9EN3PvdewfAIKnvx6DcTnTwdhjCjl0ZMw5fb6
         C06UC/RstSevTOHS9kqUkjTerJ4Pd3QHf3x2OaEpPQDa8MtRlOG4YSyzAHDQ6lKMqQVM
         v8062Tm9pPrmwogdSGMzWwgG9XX2/5jMz2um5Bqr+64GQaJeM8f2y+lSfli6PwG3nR3o
         gt5LcYG8WdmW5zB469wRKeq7Mm+ZX2H7tJf+yxpn2NF98vytQT4GSaM6JPH9yNn/EErZ
         w7qg==
X-Gm-Message-State: AOAM531lTWvsNNymzG1gqXDWtsGZo9SKv7veUDTS2jn0a1/z3aCG22e6
        7zPzZVjgynwUVIXJ49LLzcLKZeMrsgE=
X-Google-Smtp-Source: ABdhPJzNeZ2/ZxlTTRf03i/290pQTfQE9vpQ1qUb8wzVPKrufX/D7Eyaf0lVrESOuGT30EYlKLNUVQ==
X-Received: by 2002:adf:9ed4:: with SMTP id b20mr8177605wrf.206.1599231917094;
        Fri, 04 Sep 2020 08:05:17 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id p11sm11090439wma.11.2020.09.04.08.05.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 08:05:16 -0700 (PDT)
Subject: [PATCH (2) 31/34] fanotify.7: Use sizeof consistently
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <afec3122-19aa-02f4-0850-7000552ceb95@gmail.com>
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
Message-ID: <1d9ef046-8c69-1e40-4f7f-5fbee25aadbc@gmail.com>
Date:   Fri, 4 Sep 2020 17:05:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <36a9ef8e-6fd9-e074-2a19-d8529f425501@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From 75af70465a8e60aa1d96b32d843b074966b7a878 Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Thu, 3 Sep 2020 21:58:14 +0200
Subject: [PATCH 31/33] fanotify.7: Use sizeof consistently

Use ``sizeof`` consistently through all the examples in the following
way:

- Use the name of the variable instead of its type as argument for
  ``sizeof``.

	Rationale:
	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/fanotify.7 | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/man7/fanotify.7 b/man7/fanotify.7
index a7d60b2b9..29c818027 100644
--- a/man7/fanotify.7
+++ b/man7/fanotify.7
@@ -808,8 +808,7 @@ handle_events(int fd)

                     response.fd = metadata\->fd;
                     response.response = FAN_ALLOW;
-                    write(fd, &response,
-                          sizeof(struct fanotify_response));
+                    write(fd, &response, sizeof(response));
                 }

                 /* Handle closing of writable file event */
-- 
2.28.0
