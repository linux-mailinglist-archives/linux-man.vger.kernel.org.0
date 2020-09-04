Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7720525DCCB
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 17:06:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730258AbgIDPGe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 11:06:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729942AbgIDPGe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 11:06:34 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04737C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 08:06:33 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id k15so7051944wrn.10
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 08:06:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=yuTNofAttroYqa9phliYmnjPushXrWqp14nodIFn3O0=;
        b=OzrdhA23Mhe/Wq3ru9j/I8eHNKD/QnjszcCnnjn5oB0U1XCIrZwfHGcwbOerMc6rLE
         8LC3rzCtFX3U5YF8Xm5FiOedMqYbiU3NF+ZRHe4i6vmEwRNJCkoA4xW85qlXhJ3SoREI
         gJ6AgHIbA21NXZJIkDcJ48AWr08UIXGSI01tl9XbA9y6m1mLLbfJ02bxkoTSzrS8rkzM
         BFJwtyeqwtEqUGUA/06mAwrALhSJNg5lCSZLLxaP9XiWlN0w9xD+id0Wi1XHRtx7Bzaq
         EG/UjlgtgRrqIifWsrVgj0FI5cOWrZcemeiCRSSLLof3F+I6AYUUy/HgigsnrxhMi17i
         pJVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=yuTNofAttroYqa9phliYmnjPushXrWqp14nodIFn3O0=;
        b=ao24NtSkNbeTdjolxRrCGEXUJqOQAihp7PAf6X2ArVTrhJA17S9KqEzz4PUWVoWBlK
         IoKFEfoqwU9fmYx/jJhlcwpsBuLMW1YXdWEYkeTV61yjptrnQVuZKG2ScscErZ2MeGvz
         fJbDF/nFzbPj6sMmserq8AxervtyGq4hzBMMFjtg6b9Ybc/O9JVO3qaS9V9KwjF5A9wV
         b/zdcBuXABtJ14Ig5oP7KF/vX7bRb6wkpoKx1/d64ilX6ykTrIpiyPQGEPb0tW7GRfSi
         6FfTb0FnPCizS5qCmwe4gzJJBaBYT0jcWvd57UQ9o5aT2mH7/LeNJ2U0Anhaj9wagAX0
         45Og==
X-Gm-Message-State: AOAM533yfH7T3oDeqcJdMImPRFbpWzB60okgIauLV7Q2JQq8CwmoS5JW
        CbrSBXXu3Xabx+7GqfqXUbk=
X-Google-Smtp-Source: ABdhPJwmy4fByPt9TUBqY9w7z6tmc2+yCsN2M/eSORTQtKMjNW1aefhrTgobN3KxMcUfaqr46coTdA==
X-Received: by 2002:adf:ec87:: with SMTP id z7mr8701283wrn.57.1599231991588;
        Fri, 04 Sep 2020 08:06:31 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id y1sm12584144wru.87.2020.09.04.08.06.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 08:06:31 -0700 (PDT)
Subject: [PATCH (2) 32/34] inotify.7: Use sizeof consistently
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
Message-ID: <95c11dfe-2be6-def9-3a7f-a8d1f540fcb9@gmail.com>
Date:   Fri, 4 Sep 2020 17:06:30 +0200
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

From 464c2941b936df850f03d7d9df382dc2c46f37f1 Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Thu, 3 Sep 2020 21:58:59 +0200
Subject: [PATCH 32/34] inotify.7: Use sizeof consistently

Use ``sizeof`` consistently through all the examples in the following
way:

- Use the name of the variable instead of its type as argument for
  ``sizeof``.

	Rationale:
	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/inotify.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/inotify.7 b/man7/inotify.7
index 9b2d7a4e5..4093bba5a 100644
--- a/man7/inotify.7
+++ b/man7/inotify.7
@@ -968,7 +968,7 @@ handle_events(int fd, int *wd, int argc, char* argv[])
         /* Loop over all events in the buffer */

         for (ptr = buf; ptr < buf + len;
-                ptr += sizeof(struct inotify_event) + event\->len) {
+                ptr += sizeof(*event) + event\->len) {

             event = (const struct inotify_event *) ptr;

-- 
2.28.0
