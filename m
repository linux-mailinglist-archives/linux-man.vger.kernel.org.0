Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A32A81F0B11
	for <lists+linux-man@lfdr.de>; Sun,  7 Jun 2020 14:15:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726465AbgFGMPm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 7 Jun 2020 08:15:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725886AbgFGMPm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 7 Jun 2020 08:15:42 -0400
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com [IPv6:2607:f8b0:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99278C08C5C2
        for <linux-man@vger.kernel.org>; Sun,  7 Jun 2020 05:15:40 -0700 (PDT)
Received: by mail-pl1-x641.google.com with SMTP id x11so5548791plv.9
        for <linux-man@vger.kernel.org>; Sun, 07 Jun 2020 05:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mbobrowski-org.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=O5wfOVvwRoodX+P1Sc/gK9CZqZTldxSDml0QgHt4VPw=;
        b=CMED8aKLOucbwMsvkXabThsxtbFnFucMhADH3Jr1KqDF7Djk8D+q4rkTRbbhJvShnT
         iiUCDt/7bCqf2Wj94xfysKQES3OQT4tsuNBBOlLyuInGO+q8DkdHeUvyAOwrJqlUeHez
         /R+cA20n7VCHAXlMq78HX27GkWPuU0E2OWo9EvE5y3qiR86izagQoJFuDp3TUno9qL+6
         Kv4CXX3OABmpztug3U37FWsG5AIhtaEzq8sn0RNprrZrDnFZDqAMBlgDJU+jxA0g++JH
         FhfFqbb+EaxfYxxzkVJTuEgEMdRMk2G1FA/2Khqr4+CfK7SMacp288jXstBJykn5vVm/
         g9hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=O5wfOVvwRoodX+P1Sc/gK9CZqZTldxSDml0QgHt4VPw=;
        b=O1OnmA6tZ6kK2W9DKZE9Y03oqFp2Tb3U7CeIa9SXBedQxns3LCKoPz0JJJB+QNCAOc
         C7YaC28IduRqsX0ntDaUgOS2oIIv16EkY7Qhq6fkfYGJ1l11crZXSRGm0ZAFlRpy5TrB
         9ZlgiCo4h6l19j6TpzmHUZInvUENrSRRnulje4Ke64FKCOsZ6ChWVGDS/Gv3XM7Segbw
         2aW4Xuux9SOCu7b0JxC5b/Lq7PcmQ8rcanzJKjzI8dDSn8a8i8bLpaeG6dRclbV8OGcp
         QuLV6BPXXkB35dRAfBwxU5hmHhS/vl0LWlib5gpl6spJpMkxTUcgQ6uEI61r4JtUhN+c
         kebw==
X-Gm-Message-State: AOAM530Lmo/QJ/zapGGUC6HN438poYd6+WsPekgFICHH7XhXmx2iZC0T
        cSML7itEekDau4MEvkbZ1Smo
X-Google-Smtp-Source: ABdhPJyEFAx/QXC7m+UC9gKhE2nSMYwPv0b2/W87jcTJIP1jgPYl8mFBWRnK1mixqPzFzYuXCM1ArQ==
X-Received: by 2002:a17:90a:f011:: with SMTP id bt17mr12289674pjb.179.1591532139861;
        Sun, 07 Jun 2020 05:15:39 -0700 (PDT)
Received: from mail.bobrowski.net (mail.bobrowski.net. [112.213.34.247])
        by smtp.gmail.com with ESMTPSA id e12sm3705055pgk.9.2020.06.07.05.15.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Jun 2020 05:15:39 -0700 (PDT)
Date:   Sun, 7 Jun 2020 22:15:34 +1000
From:   Matthew Bobrowski <mbobrowski@mbobrowski.org>
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 1/3] Revert "fanotify.7, fanotify_mark.2: Document
 FAN_DIR_MODIFY"
Message-ID: <20200607121534.GA4886@mail.bobrowski.net>
References: <20200529092530.25207-1-amir73il@gmail.com>
 <20200529092530.25207-2-amir73il@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200529092530.25207-2-amir73il@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, May 29, 2020 at 12:25:28PM +0300, Amir Goldstein wrote:
> This reverts commit a93e5c9593a95d09a1c9deb94dfdecbb970b8162.
> 
> FAN_DIR_MODIFY was disabled for v5.7 release by kernel commit
> f17936993af0 ("fanotify: turn off support for FAN_DIR_MODIFY").
> 
> Signed-off-by: Amir Goldstein <amir73il@gmail.com>

This looks fine to me.

Reviewed-by: Matthew Bobrowski <mbobrowski@mbobrowski.org>

/M
