Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F230D2E6BCB
	for <lists+linux-man@lfdr.de>; Tue, 29 Dec 2020 00:14:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730637AbgL1Wzw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Dec 2020 17:55:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729384AbgL1UKB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Dec 2020 15:10:01 -0500
Received: from mail-oo1-xc2a.google.com (mail-oo1-xc2a.google.com [IPv6:2607:f8b0:4864:20::c2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 978E3C0613D6
        for <linux-man@vger.kernel.org>; Mon, 28 Dec 2020 12:09:21 -0800 (PST)
Received: by mail-oo1-xc2a.google.com with SMTP id s19so2441048oos.2
        for <linux-man@vger.kernel.org>; Mon, 28 Dec 2020 12:09:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=vmZA3W/qo/PHvprs324cVlFdZ1enSbAM++JvndVH4g8=;
        b=oXCwVPso8HcTDzOPA2jf1HykjQtD3WH3nUoJjiUriFtqh3GK7g9fPQC9qso04nJZ9D
         MoJ2wU8MoXzPHc8VdwOlOqhvMWCoMYfqeWnqewXZLmrKV9V2CurIzhTVMpI1l42YJod1
         HJQgp4fNoHI7qvsOK/9mbGVMkSD5HaCdIx5xXSaaIRmyezilpCmej9QYtB3rnRqi7lSj
         oc27zQmIctMSwj33+XGnbNPBm9mdKaHdJpDWpd8+rWEMwURmsLM7PgzqZLeW+qbw+QfC
         UBHThIK4cirE1dIjm97ffebcHe9jtTpzMXBOzZB4i6WRkbBhWy94m0kR++ILXH4MEjxq
         kVuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=vmZA3W/qo/PHvprs324cVlFdZ1enSbAM++JvndVH4g8=;
        b=Ftcf1+TCyDa8lfqYZRyWWwK0QwHOEz1x3I9QEcpvwNjmZcYT41x7gcsGFsbXHA48NL
         qySNo/im4vqSDd0BMP9am9MUlTwETFrqYf/+iST/YMhZAAbEJuGQ1r5aOxuBfSmKKU1q
         3YYyQQfKHrdAw3ass3aNvhQpnwWz5K1W0JywIysEMDgKAcOiOa9cz8dgMludc+9Hfb4o
         40HVpPUbTubV8BgnJIY4/e2BgZLT588B2ydWJfyZTnE4Vwp8maRa2VvkZd/1M5a2GfWA
         LJpSQTaOTSpdgV4hso6sNZ5OrfaSQEjB19TzhRNrqyi/d3roAF3lJQfJQ0BKeiiEoI7e
         4/5w==
X-Gm-Message-State: AOAM533dAYlIbvfz+Wm9T204+b4von9UJbeiPmD0rf2Jq8Ih96YkT4WA
        6iNl0nvLiTDh8af1VNJgfhrFLBGGMuQKtuaeV4s=
X-Google-Smtp-Source: ABdhPJw2p61XQsNHYT5TKuOwLJQFRx/VMgKC+iF8LleNo/vtvwwomTnzAxKZN3ioFi7rgZS6g5qL7U1rXqZXrLoeUcw=
X-Received: by 2002:a4a:4ccb:: with SMTP id a194mr31836972oob.14.1609186161055;
 Mon, 28 Dec 2020 12:09:21 -0800 (PST)
MIME-Version: 1.0
References: <fab82b1d-2e7b-a741-6d1f-df46c6edd64e@gmail.com>
In-Reply-To: <fab82b1d-2e7b-a741-6d1f-df46c6edd64e@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 28 Dec 2020 21:09:10 +0100
Message-ID: <CAKgNAkifSxQ=yWF1ysb82RtnrNwvGgZKXAzoNwO_RCBjnh=zvw@mail.gmail.com>
Subject: Re: Rationale for a commit
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Mon, 28 Dec 2020 at 12:29, Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
>
> Hi Michael,
>
> I'd like to know if you remember the rationale behind this commit:
>
> f90f031e0f1f4529fa7536aca61dfe54509745a5

Hmmm -- not a very good commit message is it :-/

And some of the changes in the patch are inconsistent (adding .PP in
some cases, removing it in others).

I think I'll quietly ignore that commit and note that your
eaa18d3c440bccfd842df9640c440821b2f5bc42 fixed up my mess ;-).

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
