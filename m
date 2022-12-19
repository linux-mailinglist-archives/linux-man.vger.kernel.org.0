Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E2EC651491
	for <lists+linux-man@lfdr.de>; Mon, 19 Dec 2022 22:02:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232517AbiLSVCg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 19 Dec 2022 16:02:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229690AbiLSVCe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 19 Dec 2022 16:02:34 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C269EB4B7
        for <linux-man@vger.kernel.org>; Mon, 19 Dec 2022 13:02:32 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id ay40so7345640wmb.2
        for <linux-man@vger.kernel.org>; Mon, 19 Dec 2022 13:02:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LUiJozbSwzrZ0Lc9HLDzbr5vDh8QDRPkrdepAhcXC38=;
        b=AQykM3mBb/C6TcCqNEUgxhwqplCQ9cynnIxmz4LnipLNXmz0sFadE61c3A9qo7JOVQ
         M0O7VOMIgO3QRD0NgGbJFZLod+K+BSeAFqa+BzXfpnTDA9N25tdGHipf6ziRHPJm8K4b
         xk1Cg8jh/vybv/j0KuYwft6gsrPHyXGofiw8fL48O0zJOjH12GZNqobAoPFvAXFNlg9B
         G4nbtU5e6QMGH24gRLzwKYFsen5BvS0yzBDlDsBmHjTZsuQM4JGCr2AgMxfnLxsrOiOj
         Rn7Dj1w8KuVqSWBfL4KzzxxUTkeLzBWDslXuEVzhOC9btAxIsHLZNVqmXLkOL+LJyloS
         nSRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LUiJozbSwzrZ0Lc9HLDzbr5vDh8QDRPkrdepAhcXC38=;
        b=z+JeUOgukD7ubClk8ijfHQjBGYG2Ua6tRPA7F46dnyxqKOX6f+oGJ+UQnek8CCPF9h
         x3awv/xTf3s9aHN6SkqOq84FdlyShyvINs384xY5T8oZ6vWAWce6aVl9nCyEFKH36eN3
         Vq2ClmlX6mXUv1btthh6hPHoGE7fnDLswGk5AX5SU9Z0A6tm7WfPaf3LV5OkJxX8qyJu
         1Htc/BL7SeWWEY4o2S3EbIU7yvQpnMW8k8x9ezAZ0HBgq95e3nDSDWRew/3yC1nJK0Dn
         kmlnd5a6VzdepHk+ttVvtzFO8x4E0iRPE0nD97XAst5zpuUMMd9PTThQ2R16mUPKMxE6
         SgDw==
X-Gm-Message-State: ANoB5pk5Tt+XGbax7BWe+q0myeX3MR4fap3VIR5n/UmNca+bb3hi+snH
        Rw7q16/gQ0nTyxx+jqyRzRYQuVeHNnA=
X-Google-Smtp-Source: AA0mqf5ppzJYtgD21DAg9pj5QvhQ7unPOFx9SfBY1IpTWKNMjQ9MjYD8DtG9YqLeBTTFSnVfexShHQ==
X-Received: by 2002:a7b:c4d2:0:b0:3d1:f270:a81e with SMTP id g18-20020a7bc4d2000000b003d1f270a81emr35116235wmk.17.1671483751269;
        Mon, 19 Dec 2022 13:02:31 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id k11-20020a5d6d4b000000b0022584c82c80sm10888516wri.19.2022.12.19.13.02.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Dec 2022 13:02:30 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org, Martin Sebor <msebor@redhat.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
        Jakub Wilk <jwilk@jwilk.net>, Serge Hallyn <serge@hallyn.com>,
        Iker Pedrosa <ipedrosa@redhat.com>,
        Andrew Pinski <pinskia@gmail.com>,
        Stefan Puiu <stefan.puiu@gmail.com>
Cc:     Alejandro Colomar <alx@kernel.org>
Subject: [PATCH v6 0/5] Rewrite documentation for string-copying functions
Date:   Mon, 19 Dec 2022 22:02:04 +0100
Message-Id: <20221219210208.10860-1-alx@kernel.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221215002648.35111-1-alx@kernel.org>
References: <20221215002648.35111-1-alx@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


Hi,

Yet another revision of this patch set.

v6:

-  Fixed a link page (stpcpy(3)).

-  Use malloc(3) in the examples, to show that buffers need to be
   properly allocated before these calls.

-  Return to the example program of strncat(3) that showed a more
   reallistic use (based on groff(1)'s source code, plus some
   imagination).

-  Use the term 'end' for one after the last element of an array, to be
   consistent with C++ (as Andrew pointed out).  It is also less to
   type, and using end for the end of the string and past_end for the
   buffer was a bit confusing, since it wasn't true that
   'end == past_end - 1'.  Now, I don't have a term for the end of a
   string, so I used the description instead of a term.  The name of
   such pointers is called 'p', following tradition (and the name of
   mempcpy(3) and stpcpy(3) and others).


This is likely to be the last revision before pushing.  I don't expect
important changes to occur, and I think we can improve the page once
it's been published.  This is already a big improvement over what we've
had for many years, and worth of being released to the public.


Cheers,

Alex


P.S.: I'm writing a library that implements the functions suggested here
that are not part of libc.  The code is already done, and I'm now
working on the build system.  After that, manual pages and Debian
packaging (I'll need help for the latter), and it'll be done.


Alejandro Colomar (5):
  string_copy.7: Add page to document all string-copying functions
  stpecpy.3, stpecpyx.3, ustpcpy.3, ustr2stp.3, zustr2stp.3,
    zustr2ustp.3: Add new links to string_copy(7)
  stpcpy.3, strcpy.3, strcat.3: Document in a single page
  stpncpy.3, strncpy.3: Document in a single page
  strncat.3: Rewrite to be consistent with string_copy.7.

 man3/stpcpy.3      | 116 +-----
 man3/stpecpy.3     |   1 +
 man3/stpecpyx.3    |   1 +
 man3/stpncpy.3     | 166 +++++----
 man3/strcat.3      | 162 +--------
 man3/strcpy.3      | 234 ++++++++-----
 man3/strncat.3     | 157 +++------
 man3/strncpy.3     | 130 +------
 man3/ustpcpy.3     |   1 +
 man3/ustr2stp.3    |   1 +
 man3/zustr2stp.3   |   1 +
 man3/zustr2ustp.3  |   1 +
 man7/string_copy.7 | 855 +++++++++++++++++++++++++++++++++++++++++++++
 13 files changed, 1172 insertions(+), 654 deletions(-)
 create mode 100644 man3/stpecpy.3
 create mode 100644 man3/stpecpyx.3
 create mode 100644 man3/ustpcpy.3
 create mode 100644 man3/ustr2stp.3
 create mode 100644 man3/zustr2stp.3
 create mode 100644 man3/zustr2ustp.3
 create mode 100644 man7/string_copy.7

-- 
2.39.0

