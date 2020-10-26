Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D141929921D
	for <lists+linux-man@lfdr.de>; Mon, 26 Oct 2020 17:16:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1775354AbgJZQQp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Oct 2020 12:16:45 -0400
Received: from mail-oi1-f194.google.com ([209.85.167.194]:45874 "EHLO
        mail-oi1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1775172AbgJZQQp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Oct 2020 12:16:45 -0400
Received: by mail-oi1-f194.google.com with SMTP id j7so11006521oie.12
        for <linux-man@vger.kernel.org>; Mon, 26 Oct 2020 09:16:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=LSS6d+k5exm+/iW4LOkMkY1+gSYdlPpeG68KVzH4mPw=;
        b=t11GA+K/5vJkXfK6L2gz+eZqaMLO03g6aAR7fAn3X+bLqeRgU0411C9mo9/neu7NII
         RRsofGRvACrDZs3TGX/bEQvNJxp/esZnCCNlgFknZszzZtPFq9/oYoIgBY09iL85uRxG
         CKG1Q9naATmIHj6AybvvskyaUWdoCYeZKBrD4Orrp70RRFWOxeeqP+Z1g+hf0b8zf9lT
         Fe/zs0UM+bTAaidT+5uaMuBamtV7Fvbb30sfNE2bF+V12gNhemEWizq9Ak2QBTgMo5mp
         BBkfoD225L0O7KukPGDfs3IKIpNHYjThIHaxpOX7wU8vOzPs5RMUrZkTz9ZopSh7Y8nZ
         H3LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=LSS6d+k5exm+/iW4LOkMkY1+gSYdlPpeG68KVzH4mPw=;
        b=f6ydoN4BUJb+GfhD6AUnpkKeiDD4wiZyUj8Tyz3W80P91uXRQmNJ5ERzXiRGYcaTGR
         ycA6W0sLV6evAmokMrVfua9zWkybC25Ogy/TUxYJBtrPKwrMqWQoajjOIUVMN3Ef8GAZ
         dLa/Qj0VpQoXGlHFRjPWk+QAhrsFOY3L/IV0aWhegFP2Wiy+oAK1+n3Hz0VnRwLj0mzA
         uAj/HsQCAwBy1fXVtvH+R1aon2vDAI7TYTFAveUrLwNy35JX7BZGVX7zkzlcXolvT6ye
         OiuZCb2U0kHC7iLMrhjgStGMxZ5oUTxzV5gkb89kpT27oO/bDgF72HbsQvOrpJnjkeYo
         ADhw==
X-Gm-Message-State: AOAM531L3FKlcC/jTfDLfo9io+D04RzjpgC2WHE8pnfVcFKAyFDu7ELw
        XgCzyNBn+UqhgKj1SEmsRcXEKwlYb6Q/7z8CDhcNWeArims=
X-Google-Smtp-Source: ABdhPJyz8lhn8NgD/+HumPN/y/mcOKP3yne1nBROLoxli9QL+mMbdG7ZRJfRJ+ciYinZh7k+TIp2AmvEXyx4ZlN8m2s=
X-Received: by 2002:a05:6808:91a:: with SMTP id w26mr13484497oih.159.1603729004764;
 Mon, 26 Oct 2020 09:16:44 -0700 (PDT)
MIME-Version: 1.0
References: <c1b5cd3d-8be5-3845-1458-10d96ef29e11@jguk.org> <e795c4f3-e273-684a-012e-2b03d1f74285@gmail.com>
In-Reply-To: <e795c4f3-e273-684a-012e-2b03d1f74285@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 26 Oct 2020 17:16:33 +0100
Message-ID: <CAKgNAkjFxBQJU81YR-aBV0F6b+aZpzJmYm5ofba5dxuhYTOZpw@mail.gmail.com>
Subject: Re: argz_create
To:     Jonny Grant <jg@jguk.org>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> > May I ask if there is a way to link error_t to the definition, should
> > be in errno.h
>
> I don't quite understand what you are suggesting. Can you elaborate.

Perhaps the patch below suffices to address what you meant(?).

Thanks,

Michael

====

commit 43891c16edf44b794b0ee794ff3add948a3fb22e (HEAD -> master)
Author: Michael Kerrisk <mtk.manpages@gmail.com>
Date:   Mon Oct 26 17:13:33 2020 +0100

    argz_add.3, envz_add.3: Point out that 'error_t' is an integer type

    Reported-by: Jonny Grant <jg@jguk.org>
    Signed-off-by: Michael Kerrisk <mtk.manpages@gmail.com>

diff --git a/man3/argz_add.3 b/man3/argz_add.3
index 40b6eaa5d..bf80e906b 100644
--- a/man3/argz_add.3
+++ b/man3/argz_add.3
@@ -191,7 +191,8 @@ all null bytes (\(aq\e0\(aq) except the last by
 .IR sep .
 .SH RETURN VALUE
 All argz functions that do memory allocation have a return type of
-.IR error_t ,
+.IR error_t
+(an integer type),
 and return 0 for success, and
 .B ENOMEM
 if an allocation error occurs.
diff --git a/man3/envz_add.3 b/man3/envz_add.3
index c360c9604..d4ed0a8be 100644
--- a/man3/envz_add.3
+++ b/man3/envz_add.3
@@ -111,7 +111,8 @@ if there was one.
 removes all entries with value NULL.
 .SH RETURN VALUE
 All envz functions that do memory allocation have a return type of
-.IR error_t ,
+.IR error_t
+(an integer type),
 and return 0 for success, and
 .B ENOMEM
 if an allocation error occurs.


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
