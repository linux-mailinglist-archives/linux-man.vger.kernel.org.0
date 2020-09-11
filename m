Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C52612665FA
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 19:19:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726144AbgIKRTZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 13:19:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726186AbgIKO6X (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 10:58:23 -0400
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com [IPv6:2607:f8b0:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2033CC061377;
        Fri, 11 Sep 2020 07:35:40 -0700 (PDT)
Received: by mail-pf1-x444.google.com with SMTP id d9so7501961pfd.3;
        Fri, 11 Sep 2020 07:35:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gj1KlkDXm5bLei7jHTc9UcakWHgXDWqW45jetB3jxdk=;
        b=N9aZpbK41WRznGL8OfnYFngpsns1Azhw0LLLWT14Tuc86W6Tnnw+XzPLkkJEJYKoxs
         c2jZ3wqs6D0D1d3b6n2s33VjWwNPrr8+y8GT7IVJdzZr6FDcX7mQ3T5cSOHDS3qqet3Z
         3/TBlo1MHNhSViSI0rLKbS9twkauIEAsJVWgwaU8kPJfX5JkLuMTDoFWT/BlxnPUxXjC
         OxIzv6PhBuAyBvkJ3ZptVRAG9VKYwuvQ4pVZThj2AN/LC2fa6KKsvnw+Sunu/P8t0mW+
         hdFtHX4lTfpfSX982fd59ND6k/70qAG6HmCv9s062Wve9oF7sf8nerSUp63BTLvOC4T3
         Mqwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gj1KlkDXm5bLei7jHTc9UcakWHgXDWqW45jetB3jxdk=;
        b=Be28vicUuZSoLPGsDZQqldZZXoGxkI6cfCzEW/lmr5TF3Cesxx8kKQxq+gvtnpspfR
         lyR5iu880Q6fgeDbV+HavF6kRRuHUppNH2y9wYMI1YrpWr+d0n/kUZpxlrl+1gkv5MqP
         zgAJmpenvyJWg6knF5gf5kxjgZ129k/SJXaTuhq8eMC1VYOray49KiEN5dIj09lRSOAw
         ZO2QoBEUGdZRu7Y6z5PNceX4sJ1Mbsb3pLDU2cAznzlmQwZ8myFsaR0W2kmSHE6cb2o+
         cY+IyBfA7U+jaay1XMZLV8Ck+iCvI+RNjeBpPoEUMc0z/XVxsTwoRHah6rmrKKMYKvTn
         p3/w==
X-Gm-Message-State: AOAM532Z+I/XHHJdoBkOoClRXs1WHece0qlnYqQv360xtutehnrhN++c
        g6xuqIQjePIpRTrFgHxussnthcqTY88SYilrpnA=
X-Google-Smtp-Source: ABdhPJyMDaLwxDvdyoIV4rkMuHS2k4ZuRLvmDsBu5aRV+67AxXterxHTnzKsoNGz3A+DyFoM/PVwhInVkzhB5hRCwFk=
X-Received: by 2002:a63:c80b:: with SMTP id z11mr1766484pgg.298.1599834939648;
 Fri, 11 Sep 2020 07:35:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com> <20200910211344.3562-13-colomar.6.4.3@gmail.com>
In-Reply-To: <20200910211344.3562-13-colomar.6.4.3@gmail.com>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Fri, 11 Sep 2020 17:35:28 +0300
Message-ID: <CACKs7VD_p=d+nvuFxkWofSE6jCoKAKx5w44_5ciTJ0NX_H1ZFA@mail.gmail.com>
Subject: Re: [PATCH 12/24] getgrent_r.3: Use sizeof() to get buffer size
 (instead of hardcoding macro name)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        lnx-man <linux-man@vger.kernel.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

On Fri, Sep 11, 2020 at 12:15 AM Alejandro Colomar
<colomar.6.4.3@gmail.com> wrote:
>
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/getgrent_r.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/man3/getgrent_r.3 b/man3/getgrent_r.3
> index 81d81a851..76deec370 100644
> --- a/man3/getgrent_r.3
> +++ b/man3/getgrent_r.3
> @@ -186,7 +186,7 @@ main(void)
>
>      setgrent();
>      while (1) {
> -        i = getgrent_r(&grp, buf, BUFLEN, &grpp);
> +        i = getgrent_r(&grp, buf, sizeof(buf), &grpp);

I'm worried that less attentive people might copy/paste parts of this
in their code, where maybe buf is just a pointer, and expect it to
work. Maybe leaving BUFLEN here is useful as a reminder that they need
to change something to adapt the code?

Just my 2 cents,
Stefan.
