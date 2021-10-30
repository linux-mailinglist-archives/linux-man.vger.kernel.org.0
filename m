Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3A7EA440BB7
	for <lists+linux-man@lfdr.de>; Sat, 30 Oct 2021 23:32:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231958AbhJ3Ve3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 30 Oct 2021 17:34:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231766AbhJ3Ve2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 30 Oct 2021 17:34:28 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 930C0C061570;
        Sat, 30 Oct 2021 14:31:57 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id k7so22132558wrd.13;
        Sat, 30 Oct 2021 14:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=REsqjea0cF4OjeeiZYefrBXNixIR8cj4ciSNGtAMCZE=;
        b=fFLUffnoR6w5g9moZTvMMKZ1sjFgUHO9g3cDOwLL1V6Lruh4ji9Q28BxHQvPjjom+1
         JGacvl3NVMlbCKl+AzbOhYTBrSKcgPRm3+y3S/e1MWiYCcZMUUMchEmZvKuaZwX/2qf6
         E/cczlflMQt315+l2Iw0PchloAwP8HaEprzpN+CqJkr+ZHBYBSd20S84yuPT9liOho/a
         k/P+lvmpkofYf85dfgxr1TjDdJJWYCJU5ut/Ke+GvLo8gYjXjbznYzoNtSPDQxii4sL2
         k6B80UKFM+KMRITe/FXgLm2R1fj8Hohit+WmCuC220o0uffcDFAX6C+yOfcu3Z5IUs3S
         HaUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=REsqjea0cF4OjeeiZYefrBXNixIR8cj4ciSNGtAMCZE=;
        b=sNtrJuXo9h7VqH2IValMl2A0g7suLqPUjObVItIsVscZ/YKJ0vBO5IcOAZCeOxR1zY
         o8zHigqhd2gHVaAIQOleorE306BF3vSo82RB8pqU6GM+IeJz2nHoWt0AhTEhFJP4szPN
         Xt6FfNRgg9WSfz4P0/iP1NnAItnhGmlLRWWb1hxn6DncOPtT21xytsNtHOXDMuY3bq4f
         0UMe0ExM3Av2thFbXvg4fuBNkZH7zaHy4o6rhMiYBELRL3U4vEvJwtVL0DNlwzggEE9e
         lO+u6nYTIQJxqSnrcAtoRNWSyiorcEjBEwAuuBsD/36IbO25QpJh8Quhyr8pVVAlhOqn
         HKtg==
X-Gm-Message-State: AOAM532po/PvmlR/uJWmIuXPaf8pqtXE4zw22ZoLfI6cTKt7AEL4lFV4
        32MUwENcqAL/2w8pFtMzyVk=
X-Google-Smtp-Source: ABdhPJyH9CNbZdcF9vUTSLC1WOjMGGWr0NwayNbUyJHghkJXf7Ad6wgW8WLo4noljT/kna2KwGcIzA==
X-Received: by 2002:a05:6000:12c5:: with SMTP id l5mr9615558wrx.173.1635629516234;
        Sat, 30 Oct 2021 14:31:56 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id c79sm2948689wme.43.2021.10.30.14.31.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Oct 2021 14:31:56 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Cc:     git@vger.kernel.org, Alejandro Colomar <alx.manpages@gmail.com>,
        linux-kernel@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 03/22] get_kernel_syms.2: SYNOPSIS: Mark as [[deprecated]]
Date:   Sat, 30 Oct 2021 23:31:13 +0200
Message-Id: <20211030213131.140429-4-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211030213131.140429-1-alx.manpages@gmail.com>
References: <20211030213131.140429-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This syscall was removed in Linux 2.6.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/get_kernel_syms.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/get_kernel_syms.2 b/man2/get_kernel_syms.2
index beb26e539..aa5a23f6e 100644
--- a/man2/get_kernel_syms.2
+++ b/man2/get_kernel_syms.2
@@ -14,7 +14,7 @@ get_kernel_syms \- retrieve exported kernel and module symbols
 .nf
 .B #include <linux/module.h>
 .PP
-.BI "int get_kernel_syms(struct kernel_sym *" table );
+.BI "[[deprecated]] int get_kernel_syms(struct kernel_sym *" table );
 .fi
 .PP
 .IR Note :
-- 
2.33.1

