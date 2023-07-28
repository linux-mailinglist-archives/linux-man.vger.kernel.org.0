Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F06B3767D42
	for <lists+linux-man@lfdr.de>; Sat, 29 Jul 2023 10:44:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229521AbjG2Iok (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 29 Jul 2023 04:44:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231317AbjG2Ioi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 29 Jul 2023 04:44:38 -0400
Received: from mail-oo1-xc36.google.com (mail-oo1-xc36.google.com [IPv6:2607:f8b0:4864:20::c36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5AAFC130
        for <linux-man@vger.kernel.org>; Sat, 29 Jul 2023 01:44:37 -0700 (PDT)
Received: by mail-oo1-xc36.google.com with SMTP id 006d021491bc7-56661fe27cbso1901399eaf.3
        for <linux-man@vger.kernel.org>; Sat, 29 Jul 2023 01:44:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690620276; x=1691225076;
        h=cc:to:content-transfer-encoding:mime-version:subject:date:from
         :resent-to:resent-message-id:resent-date:resent-from:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tYyZ+peh93miAD49NUHC58LStYoh7+xozam4igNQRFk=;
        b=qPLUJvbV9yfYCXYGRyp5xTUxDau/nqt3MUvuYW9RMpxrlosngrJKJCqHwPhGVld3S0
         P0Nll6lkKPWYuT8r5fqQ68bG459QXlW687/RRQunb8ExO8DEL5ZSV/t5nemB+3nOSpsA
         10t5UkT/nL2bMKEuYMlbZLDxdnRfj/ezb68/f/mlb3Nufyvb6vgePxO279k4MZSR5Aas
         zTVeONjZ5eBOn7x7f/zt+kqLuSZQB639fplxyNPTUAue2Vml4IaORhCRN+bJ4zT25dCv
         CIg4U952WLWVMOosFD+xEcRgbE0mCy5F4UuMoOZwQSqa23ZMglB/MkBhU7THEykducL3
         40PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690620276; x=1691225076;
        h=cc:to:content-transfer-encoding:mime-version:subject:date:from
         :resent-to:resent-message-id:resent-date:resent-from:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tYyZ+peh93miAD49NUHC58LStYoh7+xozam4igNQRFk=;
        b=WRRYbPqniGW7Pz9s25L/Y4HIM6TslvwQfqJ7RW6G19US3sr4brNXRrXYXCjm2RadpE
         pSrZ0dzLwvnkJOzkhPueWcwEs7iyJ5GWt5HnSLDxVFKo/pXefGpyz2vXDYGJaHeTLgtM
         Las1Wrgr/wR4+BRw6P/rvbGNFgcyTRYMn/dbMlX4mzQk093/wYumwkz9g37ApeCI3aMT
         qb5ac2bvPCZX8yMVCUy6mS7i/9qMaxHHUokeP1fMGiRxESwohAnU/LSRqncPKNB+9Bpg
         m9hQpQscEtIu7xYwN4R0AR8UA5ft12GuFhGyEmjaXrIy/5xFO35ro0F+q+IFJeJsbNsu
         H0Zw==
X-Gm-Message-State: ABy/qLZIOuUzT8UNpCxCQ0gphoHGCEob1XDCJ2mp7kfiC/K3MhvhTWs9
        Dv5cXF+Gi8nomJncKjokFGSiapZ7BQ8=
X-Google-Smtp-Source: APBJJlFanqjPgdxIcUiJcAAexe6dS9dLsRUq/ZW4/L1ENF4XM1nCA5rDQOfqVzAfe6j0aed5me8eWQ==
X-Received: by 2002:a05:6870:3294:b0:1ba:8307:9a24 with SMTP id q20-20020a056870329400b001ba83079a24mr5966559oac.10.1690620276531;
        Sat, 29 Jul 2023 01:44:36 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id 67-20020a4a1746000000b0054fba751207sm2460628ooe.47.2023.07.29.01.44.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Jul 2023 01:44:36 -0700 (PDT)
Message-ID: <64c4d174.4a0a0220.6d519.0263@mx.google.com>
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
Date:   Fri, 28 Jul 2023 12:02:49 -0500
Subject: [PATCH v2 1/2] time.1: ffix
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

v2: Include more background on proper ellipsis usage.

Mark up ellipses properly.  They should be in roman.  The item preceding
an ellipsis should be in the singular.  Use unbreakable space between
metasyntactic variable and subsequent ellipsis.

Quoting groff_man_style(7):

    • Symbols that are neither to be typed literally nor replaced at the
      user’s discretion appear in the roman style; brackets surround
      optional arguments, and an ellipsis indicates that the previous
      syntactical element may be repeated arbitrarily.
[...]
    • The dummy character escape sequence \& follows the ellipsis when
      further text will follow after space on the output line, keeping
      its last period from being interpreted as the end of a sentence
      and causing additional inter‐sentence space to be placed after it.
[...]
    \|  Thin space (one‐sixth em on typesetters, zero‐width on
        terminals); a non‐breaking space.  Used primarily in ellipses
        (“.\|.\|.”) to space the dots more pleasantly on typesetting
        devices like dvi, pdf, and ps.
[...]
    • Why doesn’t the package provide a string to insert an ellipsis?
        Examples of ellipsis usage are shown above, in subsection
        “Command synopsis macros”.  The idiomatic roff ellipsis is three
        dots (periods) with thin space escape sequences \| internally
        separating them.  Since dots both begin control lines and are
        candidate end‐of‐sentence characters, however, it is sometimes
        necessary to prefix and/or suffix an ellipsis with the dummy
        character escape sequence \&.  That fact stands even if a string
        is defined to contain the sequence; further, if the string ends
        with \&, end‐of‐sentence detection is defeated when you use the
        string at the end of an actual sentence.  (Ending a sentence
        with an ellipsis is often poor style, but not always.)  A
        hypothetical string EL that contained an ellipsis, but not the
        trailing dummy character \&, would then need to be suffixed with
        the latter when not ending a sentence.

            Instead of...              ...do this.
        ──────────────────────────────────────────────────
        .ds EL \&.\|.\|.         Arguments are
        Arguments are            .IR src‐file\~ .\|.\|.\&
        .IR src‐file\~ \*(EL\&   .IR dest‐dir .
        .IR dest‐dir .
        ──────────────────────────────────────────────────

        The first column practices a false economy; the savings in
        typing is offset by the cost of obscuring even the suggestion of
        an ellipsis to a casual reader of the source document, and
        reduced portability to non‐roff man page formatters that cannot
        handle string definitions.

        There is an ellipsis code point in Unicode, and some fonts have
        an ellipsis glyph, which some man pages have accessed in a non‐
        portable way with the font‐dependent \N escape sequence.  We
        discourage the use of these; on terminals, they may crowd the
        dots into a half‐width character cell, and will not render at
        all if the output device doesn’t have the glyph.  In syntax
        synopses, missing ellipses can cause great confusion.  Dots and
        space are universally supported.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man1/time.1 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man1/time.1 b/man1/time.1
index efb818cfd..8902b4b96 100644
--- a/man1/time.1
+++ b/man1/time.1
@@ -9,7 +9,7 @@ .SH NAME
 time \- time a simple command or give resource usage
 .SH SYNOPSIS
 .B time
-.RI [ options ] " command " [ arguments... ]
+.RI [ option \~.\|.\|.\&] " command " [ argument \~.\|.\|.]
 .SH DESCRIPTION
 The
 .B time
-- 
2.30.2

