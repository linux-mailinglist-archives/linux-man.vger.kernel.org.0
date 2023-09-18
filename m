Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E565E7A4E56
	for <lists+linux-man@lfdr.de>; Mon, 18 Sep 2023 18:11:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230188AbjIRQLK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 Sep 2023 12:11:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230174AbjIRQKs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 Sep 2023 12:10:48 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73B84192
        for <linux-man@vger.kernel.org>; Mon, 18 Sep 2023 09:00:23 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-404c023ef5eso29083855e9.2
        for <linux-man@vger.kernel.org>; Mon, 18 Sep 2023 09:00:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=szeredi.hu; s=google; t=1695052558; x=1695657358; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3lFpWEQNX0RgOS+vwuIIC94hCwP0MrQhLUc3uHKyySs=;
        b=MErFwUw0J6GFbRRbe1GguksN1tLv56l8u4A3v4MbzVYDgBmbKRHF/V6wEFp0gFmNjy
         fY23Aw/pjzjZMYPdFqnP9WjFVpNEROGS2I4FEl/FcyXqWibQcbWTYNuX4tlWKswsOqYN
         QifD9zqIy07YFrE8OBkKs54CDgk61Nfo9fi3I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695052558; x=1695657358;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3lFpWEQNX0RgOS+vwuIIC94hCwP0MrQhLUc3uHKyySs=;
        b=PKvBmE65h50ybQ375klOgU5JwAhpCr9vQ1KmBVEk6js1dQF9zJHZDTLlOeuzTvSIM4
         QTLbrhbWaDGRGY1pM18AAQUwm/CHc9MYAjHviQQLlmeGhUMHiRx7Q/GBSY7LyrnytL83
         N3NCwDpSdlQBcuK/UCGysc8qEF5cjxbN1eZFCPDW4agB4LGhloXWHQ8ZacwkAPPSAyhs
         iuF6NC/3bDfCaeT51STQBkufultXkEZJaoXepUL5YSnQqvf7tiaVwSxhy+FlULdTkjKB
         9SVqUnWIr1uJNdbB4O5pONJArl5jFDCu/Shxz1SV+Ve69/gjsCZiXi/kKA9s92ql+Rmn
         nwkw==
X-Gm-Message-State: AOJu0Yw07qbxk9NSX98qTaYMMg6hcExxkae6TsE3fsdHH5PNPlJNafvH
        xz2uuy0SnDTEmSxBbNYomNh7AmTo/grmd5/C382tDJVxXW7kCshK
X-Google-Smtp-Source: AGHT+IFnzEkphfcA1k56lMmjABKC+h4WWJYwladyvHeyaRQV3hNEF1Dw61zv3yr9gv0EEochrOGS5dXCs2GS30BWGs0=
X-Received: by 2002:adf:a3c4:0:b0:31f:f664:d87 with SMTP id
 m4-20020adfa3c4000000b0031ff6640d87mr7329776wrb.20.1695048675110; Mon, 18 Sep
 2023 07:51:15 -0700 (PDT)
MIME-Version: 1.0
References: <20230913152238.905247-1-mszeredi@redhat.com> <20230913152238.905247-3-mszeredi@redhat.com>
 <20230914-salzig-manifest-f6c3adb1b7b4@brauner> <CAJfpegs-sDk0++FjSZ_RuW5m-z3BTBQdu4T9QPtWwmSZ1_4Yvw@mail.gmail.com>
 <20230914-lockmittel-verknallen-d1a18d76ba44@brauner> <CAJfpegt-VPZP3ou-TMQFs1Xupj_iWA5ttC2UUFKh3E43EyCOQQ@mail.gmail.com>
 <20230918-grafik-zutreffen-995b321017ae@brauner> <CAOssrKfS79=+F0h=XPzJX2E6taxAPmEJEYPi4VBNQjgRR5ujqw@mail.gmail.com>
 <20230918-hierbei-erhielten-ba5ef74a5b52@brauner> <CAJfpegtaGXoZkMWLnk3PcibAvp7kv-4Yobo=UJj943L6v3ctJQ@mail.gmail.com>
 <20230918-stuhl-spannend-9904d4addc93@brauner>
In-Reply-To: <20230918-stuhl-spannend-9904d4addc93@brauner>
From:   Miklos Szeredi <miklos@szeredi.hu>
Date:   Mon, 18 Sep 2023 16:51:03 +0200
Message-ID: <CAJfpegvxNhty2xZW+4MM9Gepotii3CD1p0fyvLDQB82hCYzfLQ@mail.gmail.com>
Subject: Re: [RFC PATCH 2/3] add statmnt(2) syscall
To:     Christian Brauner <brauner@kernel.org>
Cc:     Miklos Szeredi <mszeredi@redhat.com>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-api@vger.kernel.org, linux-man@vger.kernel.org,
        linux-security-module@vger.kernel.org, Karel Zak <kzak@redhat.com>,
        Ian Kent <raven@themaw.net>,
        David Howells <dhowells@redhat.com>,
        Al Viro <viro@zeniv.linux.org.uk>,
        Christian Brauner <christian@brauner.io>,
        Amir Goldstein <amir73il@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, 18 Sept 2023 at 16:40, Christian Brauner <brauner@kernel.org> wrote:

> What we're talking about here is a nicely typed struct which returns two
> paths @mnt_root and @mnt_point which can both be represented as u64
> pointers with length parameters like we do in other binary structs such
> as bpf and clone3 and a few others. That is a compromise I can live
> with. I'm really trying to find as much common ground here as we can.

So to be clear about your proposal: .mnt_root and .mountpoint are
initialized by the caller to buffers that the kernel can copy paths
into?

If there's an overflow (one of the buffers was too small) the syscall
returns -EOVERFLOW?

Thanks,
Miklos
