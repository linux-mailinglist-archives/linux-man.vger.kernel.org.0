Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1144E35525C
	for <lists+linux-man@lfdr.de>; Tue,  6 Apr 2021 13:34:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243033AbhDFLez (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Apr 2021 07:34:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245753AbhDFLee (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Apr 2021 07:34:34 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8725C06174A
        for <linux-man@vger.kernel.org>; Tue,  6 Apr 2021 04:34:26 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id e18so13842536wrt.6
        for <linux-man@vger.kernel.org>; Tue, 06 Apr 2021 04:34:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PsRlMClDvCUeU95FJFPygU/UNiiJ+XB2rftmgXSezOA=;
        b=WL0f7AR4Riwwyjw59YgDOoaKWyLKVtukQ5T/Z57V2mjTv8EdZADL37bcggCJHfSOLF
         7qLYKSNt4qScaIs86SVpHbU4gbkuB0Uwjqa4isl+YYnyNonSzz8Aly/BS7Uj0qMbOW8z
         fqh72shOPqyr60Ii6eCJW8RpwjFIs6ItKmJouoWIHhHWrfyR0xufW/JX6KxTSnpYWwWo
         sFK5Wl6EJFK9LLYmCBas2I/+SQ17/+DyNV/tCRKaI+BhE54DPORIuG4kA8+2Xek/HaXP
         CBqE5O5LRwniP5rrQkIY/U+fJ1XQQt4fAJNPPEZuTSU9LCaF9wXflxf0VgPv8+O7MLZw
         AtFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PsRlMClDvCUeU95FJFPygU/UNiiJ+XB2rftmgXSezOA=;
        b=ttg/MrEXGTdEg3n8PxznuHtGaCvPQ+YND17OTsjbd6FJd6IrHYrZjQ/CHV9DnbOSmr
         UBHpvki9ltKzwORqf+4/SXrGGiDi8VDS98rSXtaBSjs1zdWeqWzcmv7pwkx1a+wa5DUx
         h2tMUQuXhd5rQ/hQax1PWNLMWLcY57HXNWpMZcvhEwzt8JSJgqPUeSf9gRwq9s8L6J+H
         7jfa3NpN+EI8VMPL0OVoJvcgPWiYu6/p2415cDEyG544wwVSYUAykDKFWZ4KBn6C4T+C
         A4J0flQ0Ua4rp/9CMj6eBpWc1OQ2RpjZmb9SQRH+VZPiYUpM/z0UC95InpkCtt1kEHqb
         O83g==
X-Gm-Message-State: AOAM53326vIycsYJHQNh0GOQI0FqRwvtbl3gRKrVnr+14B5rGI9BZYO/
        wHnLSH1s5Ia0jCbVPZSkKTcSKiDqD/s=
X-Google-Smtp-Source: ABdhPJxIj8ym+nj2CwyAgU/JgSayFDCj8eCl1II6i/7hAhcySukFnqUm+nOnKDBiF/YHDP56hFeogg==
X-Received: by 2002:a5d:5688:: with SMTP id f8mr8577683wrv.158.1617708865538;
        Tue, 06 Apr 2021 04:34:25 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id 187sm4408030wma.0.2021.04.06.04.34.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 04:34:25 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>,
        Debian man-pages <manpages@packages.debian.org>,
        "Dr . Tobias Quathamer" <toddy@debian.org>
Subject: [PATCH v5 0/3] Use standard features in the Makefile
Date:   Tue,  6 Apr 2021 13:34:08 +0200
Message-Id: <20210406113410.22384-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210406111448.20392-1-alx.manpages@gmail.com>
References: <20210406111448.20392-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

v4:
	- .gitignore: ignore everything new by default,
	  instead of ignoring specific things.

v5:
	- .gitignore: Add .gitignore exception
	- .gitignore: */** ==> *  Ignore absolutely everything new.

Alejandro Colomar (3):
  Makefile: Use standard features (IMPORTANT: default prefix changed)
  Makefile: Fix bug when running in parallel
  .gitignore: Add file

 .gitignore |   8 ++++
 Makefile   | 116 ++++++++++++++++++++++++++++++++++++++++++-----------
 2 files changed, 100 insertions(+), 24 deletions(-)
 create mode 100644 .gitignore

-- 
2.31.0

