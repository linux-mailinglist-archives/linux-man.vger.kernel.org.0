Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C6E41B1E64
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2020 07:52:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726095AbgDUFwl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Apr 2020 01:52:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725881AbgDUFwl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Apr 2020 01:52:41 -0400
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB0D2C061A0F
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 22:52:40 -0700 (PDT)
Received: by mail-ej1-x644.google.com with SMTP id e2so7701528eje.13
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 22:52:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=uxlvB33HrQfUBz5/iT9j5WD4k6cJ3JrJsu2hBH8ddB4=;
        b=PL7wpgNUGsdbdYgsWWJ3avugvsS2mSqRlJDQ3t3eSBhDK1rFJQpIFAgGF0yiCalG9U
         zBS0TTfVfp8tJ3LqOLtxI0WqAjOkh35OImbNNNVUeY/v2L6Bw3ptGa2IOjWWJ7+D4MKb
         WUbjP6k9DURx4sRGuDpRfTd+aBZlnCKj2yNwULL2HUSDkQp+mbs0D2580m7vmq+Scep2
         hwclSeC65PIJnZyXZGcXNd9H6+W6NWbe1weoj6wIAJpvB2PUkwBcAVRaYQOP1Als+pgM
         SP1ICiOIV0dtPwkKoJV/XcUqcz9lCAWzXTvu7ZpQzTdZeoDsPfVIr/XXQPYhilWRquBQ
         2yJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=uxlvB33HrQfUBz5/iT9j5WD4k6cJ3JrJsu2hBH8ddB4=;
        b=AGPeQF3nUjJSBmZ5m0TPOD6vfebGdj+zV8ppqsTngmH/99++mjkLcg9mc8NFs/YCWt
         JfRQep2Lg6JIbaxLQIJXO0b7OD8qWWwX6qQNGvEwI230vXOc+d6KrGnQIe5riS9pHP/2
         d8x/D8yvnjsKDaifTXn8dPNWnWYj+7g8fkQnjiSVkZbOETBZ8dw0985p/F/egtGkLEt1
         6qLxrsnPkIUCTc37dONJrDJkVbDmp0JsXAixEESCdTYGdXeZiAhirtqm5AL76Pw0AiwG
         wmTv8tl8y76rPcBZBoC5WIJ/M7zMHK4luj20E3M4eD/iUwG5c0Va17tE0dv+WZeZZQrm
         nxxQ==
X-Gm-Message-State: AGi0PubNbQ3ZzPD0xdr4B952UFiRai1O7zKGfzhcqr7ncKpF9uoEJNuJ
        nSiI6aksrMjiWx2xyn/xL0r1Tac81997/XcBA04M6bLT
X-Google-Smtp-Source: APiQypLpN1uMc/pvZl9uMAdPgpa9/TolqQ5wQJgmE2ycshMRpj1VPzxBOLEKK9Llo5B7fr+yqyRh8HR4lgZL0x26Qk4=
X-Received: by 2002:a17:906:5fd2:: with SMTP id k18mr19049505ejv.243.1587448359584;
 Mon, 20 Apr 2020 22:52:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200419064834.GA32494@Debian-50-lenny-64-minimal>
 <149e7d6f-1c0a-400d-7c34-a1bd4d284bdf@gmail.com> <d9e4d306-3af0-e28a-526d-a97d832b6d86@cs.ucla.edu>
In-Reply-To: <d9e4d306-3af0-e28a-526d-a97d832b6d86@cs.ucla.edu>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 21 Apr 2020 07:52:28 +0200
Message-ID: <CAKgNAkhjVoFZiNb0qKHmEZ5VUUF9dj5Y4hr_Ma9wozgQo_WcLg@mail.gmail.com>
Subject: Re: Errors in man pages, here: tzfile(5): Typo?
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     Helge Kreutzmann <debian@helgefjell.de>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Paul,

On Tue, 21 Apr 2020 at 04:34, Paul Eggert <eggert@cs.ucla.edu> wrote:
>
> On 4/20/20 12:27 AM, Michael Kerrisk (man-pages) wrote:
> > I think "UT" here is intended to mean "Universal Time", and as such
> > should not be "UTC". Perhaps Paul can comment.
>
> Yes, that's right. The tzfile format covers timestamps that predate the
> introduction of UTC in 1960, so the documentation uses the sloppier and
> more-general term "UT" instead of the more-precise term "UTC".

Thanks. Downstream, I applied the patch below, to help clarify for readers.

Thanks,

Michael

diff --git a/man5/tzfile.5 b/man5/tzfile.5
index 514f40798..7419a3dce 100644
--- a/man5/tzfile.5
+++ b/man5/tzfile.5
@@ -41,6 +41,7 @@ in order:
 .TP
 .I tzh_ttisgmtcnt
 The number of UT/local indicators stored in the file.
+(UT is Universal Time.)
 .TP
 .I tzh_ttisstdcnt
 The number of standard/wall indicators stored in the file.

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
