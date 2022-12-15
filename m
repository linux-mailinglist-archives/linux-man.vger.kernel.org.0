Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7918D64D49F
	for <lists+linux-man@lfdr.de>; Thu, 15 Dec 2022 01:27:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229873AbiLOA1D (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Dec 2022 19:27:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229681AbiLOA06 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 14 Dec 2022 19:26:58 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3131714D13
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 16:26:56 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id ay8-20020a05600c1e0800b003d0808d2826so3512745wmb.1
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 16:26:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hOlJAsL+rFOTxaGpTdkRYeYpDlqqfbVSqvGa98heEJI=;
        b=WFYkAwqst13mjeZRcfJ38AOpcFldid+cbv8QSk3sM/J8vOEqP2WlsrDdKtZwy8lzcm
         FAxsMQPaFjm2vI6eDRDohZQkv64Wcb4w7gYyGbivUB6YggYFeEd4PqY0oIlhaW90moPO
         VvOy8V7OawODsR+S20XJxMutL85G5+DR5uIyUiOPs4vnnrbAsDSGTixJ0R6TnnB7TzME
         Q7vNmB8358nru8AavAj3i+Ssxc2v7amA6bwc/B8vDhNfYknt9cb2hHm6NqBbgWBF3pQH
         xbjIuvs2DaH7QTOlE4gIbMe8dskr119aIlyTQfdF31qeAC05s8uZbYZRJHqNi2gupC4P
         /YVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hOlJAsL+rFOTxaGpTdkRYeYpDlqqfbVSqvGa98heEJI=;
        b=0EKpbfhOs5NAP1Ls7K+LjrSG+JpmPM8jiiWfP8lOKjnvDG53yHZGgC/Aa2iz7ptM6c
         r4Pq5uHv8vM0QuNCC19WPzCEVsgE3H588TYjBZDTPPpiafDayG6YT5M74B5YhvpghMrf
         LFF5Lc1GOFztq/Ad8Amf0t2k3eYkdb/jH8nptxzjUS3slPOWljy745m5TJ0957SX3949
         BXSqh77lDoza7ecw7wIEd89aZ3x8OAJohRV+OCFJCL/bTNWbwydOoPBfIw/7Uq57QK7+
         8vRlwUui9MaBwrgYCLwtT7oIARxB/gdn94gdmQ8Q+EqTV4mQCpXZmiFZMDqaahgzfwfX
         mxjg==
X-Gm-Message-State: ANoB5pk/DghKxfuNRrEQHJCA2aNtNHXM6pR/8P8BBofcuA/VlMmry31t
        k9HYTtksN4FAiXFVZEyE1kBGzAeKWFw=
X-Google-Smtp-Source: AA0mqf6tqpH2LAjUysRH5S0A8PZv8E3xS/tyW6dx8/RWss2oWKBUk47H5C4sHRbdWUwQys7SlLX2Eg==
X-Received: by 2002:a05:600c:21c1:b0:3cf:8833:1841 with SMTP id x1-20020a05600c21c100b003cf88331841mr20708507wmj.39.1671064014656;
        Wed, 14 Dec 2022 16:26:54 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id j41-20020a05600c1c2900b003b4ff30e566sm13511901wms.3.2022.12.14.16.26.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Dec 2022 16:26:54 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org, Martin Sebor <msebor@redhat.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
        Jakub Wilk <jwilk@jwilk.net>, Serge Hallyn <serge@hallyn.com>,
        Iker Pedrosa <ipedrosa@redhat.com>,
        Andrew Pinski <pinskia@gmail.com>
Cc:     Alejandro Colomar <alx@kernel.org>
Subject: [PATCH v5 0/5] Rewrite pages about string-copying functions
Date:   Thu, 15 Dec 2022 01:26:43 +0100
Message-Id: <20221215002648.35111-1-alx@kernel.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221214161719.12862-1-alx@kernel.org>
References: <20221214161719.12862-1-alx@kernel.org>
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

After a long investigation, I'm rewriting all manual pages about string-
copying functions (and also non-string ones).  When there was no term
for a thing, I used an invented one, and documented it, in an attempt to
form precedent; for example, for non-terminated strings (which is an
oxymoron, since strings are necessarily terminated) I used "character
sequence" (suggested by Martin, to improve my own "unterminated string".

v5 addresses a few suggestions by Doug, and also a few concerns by
Jakub.  I'm not anymore replacing current pages, but rather adding a new
one, and also rewriting the old ones to be consistent with it, but I
kept them as a quick reference, for those who need it.  They also have
complete example programs each.

This time, I'll send the formatted pages as replies to the corresponding
diffs, since there are several.

Cheers,

Alex


Alejandro Colomar (5):
  string_copy.7: Add page to document all string-copying functions
  stpecpy.3, stpecpyx.3, ustpcpy.3, ustr2stp.3, zustr2stp.3,
    zustr2ustp.3: Add new links to string_copy(7)
  stpcpy.3, strcpy.3, strcat.3: Document in a single page
  stpncpy.3, strncpy.3: Document in a single page
  strncat.3: Rewrite to be consistent with string_copy.7.

 man3/stpcpy.3      |  13 -
 man3/stpecpy.3     |   1 +
 man3/stpecpyx.3    |   1 +
 man3/stpncpy.3     | 163 +++++----
 man3/strcat.3      | 161 +--------
 man3/strcpy.3      | 226 +++++++-----
 man3/strncat.3     | 147 +++-----
 man3/strncpy.3     | 130 +------
 man3/ustpcpy.3     |   1 +
 man3/ustr2stp.3    |   1 +
 man3/zustr2stp.3   |   1 +
 man3/zustr2ustp.3  |   1 +
 man7/string_copy.7 | 869 +++++++++++++++++++++++++++++++++++++++++++++
 13 files changed, 1162 insertions(+), 553 deletions(-)
 create mode 100644 man3/stpecpy.3
 create mode 100644 man3/stpecpyx.3
 create mode 100644 man3/ustpcpy.3
 create mode 100644 man3/ustr2stp.3
 create mode 100644 man3/zustr2stp.3
 create mode 100644 man3/zustr2ustp.3
 create mode 100644 man7/string_copy.7

-- 
2.38.1

