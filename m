Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F73A6D59BB
	for <lists+linux-man@lfdr.de>; Tue,  4 Apr 2023 09:34:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233757AbjDDHeC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 4 Apr 2023 03:34:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233477AbjDDHd7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 4 Apr 2023 03:33:59 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3E12137
        for <linux-man@vger.kernel.org>; Tue,  4 Apr 2023 00:33:57 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id i5so126974010eda.0
        for <linux-man@vger.kernel.org>; Tue, 04 Apr 2023 00:33:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680593636;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cXzs52WGxV6bTAkEliQtmeOezZRJLXer8hSkSChfykI=;
        b=pdPg502CufWZ/qSi+m5XN545xEKtfpzvKRgQi4wC6lljk5qBAaObuWpVtjYSJlSxqc
         jCvmIue4LuwtYAPRfwh2q+4gzSY/TzVdfC4n2rhRB4nEVRf4tIu7uHDkgWnfvl5xOu0u
         uLxfiVKRCj8uWqPzjV8C8ZYpmfCov4vjC8YvPt1E9rG/OYjzEzYPFXRGS20VyAt1Q4TC
         1LNzA9sCqqBloj5ALccTMi/7TakehKgG7ZOmYpdCQS2AyTyvEanlLldJNM1zxDys4aQS
         EOXsXokTbTa5SLN+kl3EpvfbQGOXt5BoBDgk53Ay2ICVnZBcnJw+8z4P9ijAmhfefwuS
         OF9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680593636;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cXzs52WGxV6bTAkEliQtmeOezZRJLXer8hSkSChfykI=;
        b=LMksgb7E8WApOCVYQQVwOyQvkXlZTQR9Fsap5EGSawIK81MMZ4hOWVra8paKCsCjuk
         WGec/AkbMaY+xYtKqjoeOTHgYc4+A5yLV0qJXUNaMQHzraBiVY3OoWgQfAHicvc1mNX0
         +SQbo/mWMuGRbNk7ALxmQEszl/Ne7tEpF05rU7uD0UBWqJmWLEFtMk+Uho6sY2kJPAzM
         WX/b0i6UiZaGiH0zQQbgLpJr/rzvBvFLaIANLY0ZevRTYYL0l+Q9N2q/fASz/D4uKyWY
         QNMHjGYHqxkqGDdRVNSsTuyxeqTjNt56tVTPSWf5Lhoa2CaanxHIa+x1Q9hUSvtCZNG7
         meUQ==
X-Gm-Message-State: AAQBX9fw0hF/kZdt4RzuXPH/1WleNkiBclcQ8ziEi6HKdM1Ipjmm88lO
        kfeaUWNrrqtIJphk15iCSY65wrElcozKhQ==
X-Google-Smtp-Source: AKy350aspBECoYxy1n3TiKChEZAJhtoK7zo585GRY0tTklrSBWQQGRgCS1vcvR+CugdK+XXo9mn3FQ==
X-Received: by 2002:a17:906:1e12:b0:933:3cd8:a16f with SMTP id g18-20020a1709061e1200b009333cd8a16fmr1042159ejj.75.1680593636176;
        Tue, 04 Apr 2023 00:33:56 -0700 (PDT)
Received: from localhost (p200300f87f3c28814890d3c71c5b6643.dip0.t-ipconnect.de. [2003:f8:7f3c:2881:4890:d3c7:1c5b:6643])
        by smtp.gmail.com with ESMTPSA id x5-20020a170906b08500b0093dfd62f9dasm5537659ejy.35.2023.04.04.00.33.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 00:33:55 -0700 (PDT)
Date:   Tue, 4 Apr 2023 09:33:54 +0200
From:   =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v5 3/3] landlock.7: Explain the best-effort fallback
 mechanism in the example
Message-ID: <20230404.16675e4d7765@gnoack.org>
References: <20230324172419.117632-1-gnoack3000@gmail.com>
 <20230324172419.117632-3-gnoack3000@gmail.com>
 <a5daa228-284e-12d3-cd5b-28611830e21b@gmail.com>
 <20230401.1316d7f843d7@gnoack.org>
 <7eda6974-1f1f-66aa-f63c-f33daf2ab6e1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7eda6974-1f1f-66aa-f63c-f33daf2ab6e1@gmail.com>
X-Spam-Status: No, score=0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello!

On Sun, Apr 02, 2023 at 12:01:43AM +0200, Alejandro Colomar wrote:
> On 4/1/23 19:19, Günther Noack wrote:
> > (It feels out of scope for this documentation patch, but do you think
> > these bitmasks should be defined in the uapi/linux/landlock.h header?
> > You have looked at so many man pages already -- Do you happen to know
> > other places in the kernel API where such a problem has come up?)
> 
> I don't remember having seen something similar in other pages.
> 
> I think defining a macro in uapi headers could be the right thing to
> do.  Something like LANDLOCK_ACCESS_FS_RIGHTS_MASK_ABI_{1,2,3} or
> other similar name?

Noted it on my TODO list - it's probably best discussed on the kernel
list whether this is the right approach.


> > 1) Make assumptions about the numbers, for brevity
> >    (as done in the patch I sent).
> > 
> >    [...]
> > 
> > 2) Use the constants from the header and OR them.
> > 
> >    [...]
> > 
> > 3) Third option is the middle way,
> >    naming the "highest" known access right for each ABI version:
> > 
> > __u64 landlock_fs_access_rights[] = {
> >     (LANDLOCK_ACCESS_FS_MAKE_SYM << 1) - 1,  /* ABI v1                 */
> >     (LANDLOCK_ACCESS_FS_REFER << 1) - 1,     /* ABI v2: add "refer"    */
> >     (LANDLOCK_ACCESS_FS_TRUNCATE << 1) - 1,  /* ABI v3: add "truncate" */
> > }
> 
> I'm not sure if I like this one.  I'll leave it up to you to decide
> the one you like.  :)

I'll ponder it a bit and send a new patch soon.

Mickaël, do you have any opinions/preferences on this?

–Günther
