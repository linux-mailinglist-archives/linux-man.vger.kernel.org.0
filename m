Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 715901BDF6F
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2020 15:47:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727902AbgD2Nrd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 29 Apr 2020 09:47:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727097AbgD2Nrc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 29 Apr 2020 09:47:32 -0400
Received: from mail-yb1-xb42.google.com (mail-yb1-xb42.google.com [IPv6:2607:f8b0:4864:20::b42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E5DDC03C1AD
        for <linux-man@vger.kernel.org>; Wed, 29 Apr 2020 06:47:32 -0700 (PDT)
Received: by mail-yb1-xb42.google.com with SMTP id t9so1284235ybo.8
        for <linux-man@vger.kernel.org>; Wed, 29 Apr 2020 06:47:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+7jO7sxBpcV/XVu15SOoQiScuRn036rwQSSKlW7XY0k=;
        b=J/YsfqlomP7EY7OrqWWYmEi/9Qt/LM5Ts96n2raa6yBYEIPvSdpxbr0q2H/3QVpdfO
         oPp2EOdBDCZdqMSEq7OtaMtaUOJzvYcA3BSxac48mJ19wYpvkB4Uh5uFirveNGghE/U6
         OfcNLbW7hIrPt5D0yB1J1XQD7RxuJMrSFkK+0UEjNBlkeTLp9B7iSy+1IvuFguq+c0s5
         4yIzSE+bd3YHJVnIHc76CCzXRUf6pPIur7Qe4ebmk0i6gQvI9zT5Tw+pX8Y38hmSj37u
         snjYE0n7+WpT0JwJi5NxIVmOcXJNgIazmNkcnXEZ6XPSkZJXbi49wR/rXF8QKIPU/6oc
         rjhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+7jO7sxBpcV/XVu15SOoQiScuRn036rwQSSKlW7XY0k=;
        b=lxdiNC5Eha1wjAo00p1Wh+s5N01NPidXwkauxZR2LvAPbLhy6EbDIAt+TCwPxPBvKV
         njLBASOlmg9K/0lB3/Y/to528lZqH0WKra94ePOGCsuE2JvtFLYXhrhvcSle98mMD/RX
         N+zGF8auWXEkzLgjEIEewd58/u/4wVHbryaZSfgSWUDoPPY7zT2n0K0cFqEONQyY79rz
         ce2aAZFHH2pE7ZmvYF3PSfUULrptHT1Khgazt9tSqL9qI+X4Fn/s3MhkRq/HxZN2x3+g
         +afac2zFoAdC/C/p+JxDRtjgvpR8sy+igRiVv4KldD7BAqGcnB5S1ZPLApFlJDLSs8u8
         absg==
X-Gm-Message-State: AGi0PuZfBaS1SMINoEZ/KJylzCIsY+D3x/7OaCeyJa2xP7/9v+4X7Qni
        8rvR24lnaL3CyAi05u/AHHemB5wVTkAz7SxaxQrDLw==
X-Google-Smtp-Source: APiQypLxqmpm+7JueofSlgFEXHsnU9UpSoN3ZeFbDco12iif+qUaHvpxNMVwcfmfnxqrSpVPEFFZg9DuV/GgSs1Zci0=
X-Received: by 2002:a25:afd0:: with SMTP id d16mr54987615ybj.441.1588168051517;
 Wed, 29 Apr 2020 06:47:31 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000b27fc105a45d533e@google.com> <20200428180942.qwjjmp2e5sbx3opn@jwilk.net>
In-Reply-To: <20200428180942.qwjjmp2e5sbx3opn@jwilk.net>
From:   Adam Langley <agl@google.com>
Date:   Wed, 29 Apr 2020 06:47:14 -0700
Message-ID: <CAL9PXLyFdHT1tiUKGcet-e8yC6xfO5A54zN6sfO4NA4q0ovy7g@mail.gmail.com>
Subject: Re: [PATCH] madvise.2: MADV_WIPEONFORK affects semantics
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, Adam Langley <alangley@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Apr 28, 2020 at 11:09 AM Jakub Wilk <jwilk@jwilk.net> wrote:
> This sentence is in the "Conventional advice value" subsection, which
> defines only MADV_NORMAL, MADV_RANDOM, MADV_SEQUENTIAL, MADV_WILLNEED,
> and MADV_DONTNEED.
>
> MADV_WIPEONFORK is defined in the "Linux-specific advice values"
> subsection, which already notes that "some of these operations change
> the semantics of memory accesses". (Perhaps s/some/most/ would be better
> wording.)

Ah, thank you! Now that I look with that in mind, it makes sense.


AGL
