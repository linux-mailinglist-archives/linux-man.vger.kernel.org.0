Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7DC6425E884
	for <lists+linux-man@lfdr.de>; Sat,  5 Sep 2020 16:52:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726468AbgIEOwk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Sep 2020 10:52:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726302AbgIEOwj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Sep 2020 10:52:39 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81BBAC061244
        for <linux-man@vger.kernel.org>; Sat,  5 Sep 2020 07:52:37 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id o5so10227409wrn.13
        for <linux-man@vger.kernel.org>; Sat, 05 Sep 2020 07:52:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=C0GUf0d7WFiliMz5WL6Y10cDG+sA1XAEua+OHW9d32o=;
        b=GmZ81LBMlMsoexZImXuEJ9ER4B/+9fMaFmRpyJxF7VsbpOGbqt1y32Z2hnGfoMvq2Q
         EnD1/Hb2ktZlRAx0WoDNRXuApaIXgBweMUiAVU/PlG1bUFka1KgNZIiN4u6BIMxbjN/7
         eWcQMsvOyHXrGxE2F70J5vd6ZkFV88S2eLRwH4Bb3tOfsPhyrOOMixYG/rKWvzkT9Bil
         WDIdLD8cd9Y/Kjm1TJNmzvYXXdl6X1SHi7MbOVY7jUeyAtu0gmEaZW30Njn3Z1IXLkAY
         TzuOyQudDpouQMfEyH+QurzEjCg4KtqP6McY57gXALV6tqa3PP1f0v1kzMLWkowhW45g
         /Lvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=C0GUf0d7WFiliMz5WL6Y10cDG+sA1XAEua+OHW9d32o=;
        b=g1PHG0S6vW6f5Ia6DU4ZhN2ghv1mvIYa37eUMbgx77sfU4FTBQZljMGaguHsoDLzo3
         Nw3MLV/a0ltMWt3rKHubGPDYHJMFRGDW4QlN+BBHmkmw1F/ZwftLQ+zJl445/3k4DPW9
         Zuk1eWSTHAqYeTpF/BoXn5SHL9IeQhkLQGYpsza9VDuKwqju/GJtUac4MGElKvgMUqFm
         ltJHKDPKYkU4gKRAQztNYB8A72mxioYG6vupC6uWtaF9HV/xqcFmo6bRBLH5frSnugzV
         lTvQzy8pEnwumzNS9y/iuiJF1P4qARCeyXGxkLUaJ+K+W4TgYsGx+Zr7AxK3+i73C957
         UYJA==
X-Gm-Message-State: AOAM531Aiq/Hu+1A1nQT0HBxms/5QlLIfzlZSdSJzmDle/I5khbZ0o0+
        KgmE7WVviJT38SJkEbGTHMzjcZELqiY=
X-Google-Smtp-Source: ABdhPJx+Kudu2iTDxR0WKhvDFbwCGyXFcS02+bY1vpiqqyeEpNvHrDpsj7TjbSsbpt3WKlAkPm3YMQ==
X-Received: by 2002:adf:f492:: with SMTP id l18mr13356648wro.280.1599317551365;
        Sat, 05 Sep 2020 07:52:31 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id 2sm18182437wrs.64.2020.09.05.07.52.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Sep 2020 07:52:30 -0700 (PDT)
Subject: Re: [PATCH (2) 34/34] unix.7: Use sizeof consistently
To:     mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>, Jakub Wilk <jwilk@jwilk.net>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
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
 <fa6e973f-0a09-a9d2-a6c6-e6359d84df9e@gmail.com>
 <eb934301-27b4-245e-da89-28bde26c2bf1@gmail.com>
 <3777a325-ef49-27df-d21b-375900e34fed@gmail.com>
 <CAKgNAkiEsM-itdZ-cJAribFuAGoaLT4Nd4HDSSNOYm2MpOCCrg@mail.gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <302224e0-5d23-1bb3-e1a7-4d74d602099c@gmail.com>
Date:   Sat, 5 Sep 2020 16:52:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkiEsM-itdZ-cJAribFuAGoaLT4Nd4HDSSNOYm2MpOCCrg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael,

On 9/5/20 4:38 PM, Michael Kerrisk (man-pages) wrote:
> See commit 48d05103071830b6708a3ecabeddcdef5f3daa44.

It looks good.  Maybe I'd keep the cosmetic blank line after the
declaration+alloc in insque.3...

> Thanks for your input Alex, it's been really helpful!

Thank you very much!  I'm really happy to read that!
I learnt a lot these days.

Cheers,
Alex.
