Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 817DC1A8AC8
	for <lists+linux-man@lfdr.de>; Tue, 14 Apr 2020 21:31:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2504781AbgDNT3z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 14 Apr 2020 15:29:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1731143AbgDNT3p (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 14 Apr 2020 15:29:45 -0400
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com [IPv6:2a00:1450:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E22CAC03C1AA
        for <linux-man@vger.kernel.org>; Tue, 14 Apr 2020 12:10:40 -0700 (PDT)
Received: by mail-ed1-x544.google.com with SMTP id j20so1173875edj.0
        for <linux-man@vger.kernel.org>; Tue, 14 Apr 2020 12:10:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=ns6RcvThXSJZKselq/kTjjAwUKGMJRMHIGsV1cXq/Vk=;
        b=YVO7qmJvNdb3+chkjPCDutlv43N6BjnMQVy13scGIr2mhlipKXegdRSk/ShX5icehE
         /HhhR6OqRem/3+RZcp9mmQzpJzDqPySN4o5Il89waYHKKxXoEjn5Vv5wQdH1WVsk5lCs
         HdJJQ4B8yYgjYdOB6wgS2j9SezNjm2KpBlnfR+TwsW7H+uTq5mHvbVNWlBMHjVuBruhN
         UDRpzQmfY4rRXkuWNjltdkf8pS1ejcjvsoR/7TGUas5DgwaYpxRKppvvQOCA8f/7mBZz
         MEVNIKuBsYYu67weNrBtjnzLcKFLpafY92NfBKXYZR5d/yp0YiSXeBP1zJ1NHabmO1IA
         JsWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=ns6RcvThXSJZKselq/kTjjAwUKGMJRMHIGsV1cXq/Vk=;
        b=BuZZsB845DOUc+bXgGQFRjhesNfzEy5DuTwnwM/XE/QIUbKgRnLQTt2xrPRMsutbdx
         zDqPZ1p4o+rpCUPVcSjr16XwYj6QmR3Z5v37/ifXjEqjFnBoSh+NG46LcUM3xf9FEHEO
         vqTD94aRMXoxmtxzGZLQKZtljSFgIFEQ04EgcRYeEIEvybWN98EH+hvA4LPnkqj6skRG
         OHItCDgalyt1IbWmR9DNHM1SAptteiE+HPaTTkLjUCa/yxrCJEJGCUSFXTWvu5sXFnGi
         MeFYC51lGaQo7scXs9k0ELRstmVulcZNTnl6fEE+8Hh/M9KKbCviklZddeFoT55kjFp9
         neLw==
X-Gm-Message-State: AGi0PuathFdFx/sTpS72WoZbkXGtmZK3OI3lRpZY9rweK4zNo10iUbNG
        8SeOo8tFs6llyrAfwB7jcZYMnAkxXeZ/c/FeMvD9f75E
X-Google-Smtp-Source: APiQypLXV5isHsTFVohtPZPgqbm8BeRn6ZfFEtG2DbGKr4YiYzyNE04teMUl+r+9Vge0UJkSxmNOyrJSHoQOLt3DzCI=
X-Received: by 2002:a17:906:48ce:: with SMTP id d14mr1466286ejt.113.1586891439511;
 Tue, 14 Apr 2020 12:10:39 -0700 (PDT)
MIME-Version: 1.0
References: <90ecc432-951f-b83b-e5cb-487fa871a1ec@gmx.de> <3e169e56-b0a6-9099-957e-4304211891bb@gmail.com>
 <2a78056e-ff07-a4a2-5055-866501dd8466@gmx.de>
In-Reply-To: <2a78056e-ff07-a4a2-5055-866501dd8466@gmx.de>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 14 Apr 2020 21:10:28 +0200
Message-ID: <CAKgNAkjCuYGXm_S9NmcMCVQxLjCq8wB-ocESfaqRyu8KG1USaA@mail.gmail.com>
Subject: Re: mmap(2): MAP_ANON
To:     Heinrich Schuchardt <xypron.glpk@gmx.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> > I've applied the patch below.
>
> Somehow the patch got lost in the mail. Couldn't identify it upstream
> (https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git) either.

Ooops. This time...

Cheers,

Michael

diff --git a/man2/mmap.2 b/man2/mmap.2
index 963776e80..667cf311d 100644
--- a/man2/mmap.2
+++ b/man2/mmap.2
@@ -193,8 +193,8 @@ is set.
 .TP
 .B MAP_ANON
 Synonym for
-.BR MAP_ANONYMOUS .
-Deprecated.
+.BR MAP_ANONYMOUS ;
+provided for compatibility with other implementations.
 .TP
 .B MAP_ANONYMOUS
 The mapping is not backed by any file;

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
