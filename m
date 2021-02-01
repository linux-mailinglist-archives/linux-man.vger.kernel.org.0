Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1889930A5AE
	for <lists+linux-man@lfdr.de>; Mon,  1 Feb 2021 11:44:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233320AbhBAKnb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 1 Feb 2021 05:43:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233305AbhBAKnL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 1 Feb 2021 05:43:11 -0500
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19222C061573
        for <linux-man@vger.kernel.org>; Mon,  1 Feb 2021 02:42:21 -0800 (PST)
Received: by mail-ot1-x333.google.com with SMTP id d1so15749831otl.13
        for <linux-man@vger.kernel.org>; Mon, 01 Feb 2021 02:42:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudflare.com; s=google;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=NnYu/LjYgo3tbUkKrHPPkYXO/EOq9JvFLZ3Mqt4aqfs=;
        b=I1kTNCZzOwusb3AULUJuFMOI/Ay4/WfPohNHkn+CIayzKqW2VL64ajPRelWe+uvymi
         s8AubipHrrN6Yvuxx0STpYkaUfUdRUBFtNYHBF5iN+ymbdCvNz6mN05a5orc9Cue3ARB
         JT71tKxQXQflview0KWuI5kxhdOWVvj8duDR8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=NnYu/LjYgo3tbUkKrHPPkYXO/EOq9JvFLZ3Mqt4aqfs=;
        b=p6aN7n54eJsIRslICS9/fzmhDaNMEC4Qu8njs5cnkkxkyUbeegthDpIOpPWkk2lg3J
         6j6uS5Et/fa4N8tftU2u5pCr/3dUP82PNd9SwygrZP4+J2KCumTFZKOi3YZ44Xgi/ucs
         wHESB1oxhUC76kX6hirk+He/m0+Y9gDfaJxEmy8Kj9gaJ2i6MG/yfa29NzKE2ioEjHyj
         gJWY6CZ8pyoBB2IzNmUao38IaCDZTPmUxjPftIw8CHPFvIp+7h2x+hJWRaB6sQ8GObhh
         qeGG8sx7njSYgXU7DWbiWlPHF3bSzXeKAqKZi/uNu8Pf6z9oQzHW3+KuPZEBVOdI08ZS
         nvdQ==
X-Gm-Message-State: AOAM532ItrB2pZiBGXd1LZAii6cPnaPWyhRZJ8OmbEOHjMjwPREWYENj
        RFDuNxYZn017rWVKehLUQjBTEdr1KYjH6f6n3Xr+cv6IbUx3Ourt2EQ=
X-Google-Smtp-Source: ABdhPJwbsu5J9hmujZG/d33M5+z4VR7TyFnHqQBHFFG6InJdyvV32RONyMloRQw3VfE+lD/Sk/sLYqJPouhs3X9j/6Y=
X-Received: by 2002:a9d:1421:: with SMTP id h30mr11627494oth.45.1612176138896;
 Mon, 01 Feb 2021 02:42:18 -0800 (PST)
MIME-Version: 1.0
From:   Dmitry Vorobev <dvorobev@cloudflare.com>
Date:   Mon, 1 Feb 2021 10:42:08 +0000
Message-ID: <CAB6khqWO_meFaNn+cTtaKBDg8Zus-o6HD49Bo3KChk-5GkdFng@mail.gmail.com>
Subject: [patch] malloc_trim.3: Remove mentioning of free call
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com, mtk.manpages@gmail.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

'malloc_trim' was and is never called from the 'free' function. see
related bug in glibc tracker:
https://sourceware.org/bugzilla/show_bug.cgi?id=2531. or '__int_free'
function. Only the top part of the heap is trimmed after some calls to
'free', which is different from 'malloc_trim' which also releases
memory in between chunks from all the arenas/heaps.

diff --git a/man3/malloc_trim.3 b/man3/malloc_trim.3
index 3c4cf5e8b..84e73fd70 100644
--- a/man3/malloc_trim.3
+++ b/man3/malloc_trim.3
@@ -80,15 +80,6 @@ T} Thread safety MT-Safe
 .SH CONFORMING TO
 This function is a GNU extension.
 .SH NOTES
-This function is automatically called by
-.BR free (3)
-in certain circumstances; see the discussion of
-.B M_TOP_PAD
-and
-.B M_TRIM_THRESHOLD
-in
-.BR mallopt (3).
-.PP
 Only the main heap (using
 .BR sbrk (2))
 honors the
