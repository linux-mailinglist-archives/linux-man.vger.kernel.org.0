Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BCAB86EB9D0
	for <lists+linux-man@lfdr.de>; Sat, 22 Apr 2023 16:59:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229672AbjDVO7R (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 22 Apr 2023 10:59:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229556AbjDVO7Q (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 22 Apr 2023 10:59:16 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BCF71995
        for <linux-man@vger.kernel.org>; Sat, 22 Apr 2023 07:59:15 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-3f1728c2a57so28795575e9.0
        for <linux-man@vger.kernel.org>; Sat, 22 Apr 2023 07:59:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682175554; x=1684767554;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8Kr78qnpI9OuQgkmiOTZgE/z33fhOWqbthHwc3Rz2Ac=;
        b=cEd+rr0jqKndpIKIb8TkbgphQ19Lpc/FIARZpY/4AbrC5xZFGHKYysnpdanry0HBik
         4tvhapq5P2wdu0pq4k4eJ6dDWiV6xXimdPeR5pRbv2oBR7NEKxmFz5TB1QdZ4Pnegrra
         NaQthkYgp40I6A9q49eZd5C7a4AhecHbS21b6gNzFtIilTEzkq4Syl7oOW9JILH010ua
         x1NWaobg5Fi3JxQ5ALltL41z3RJUwUw/YrLdD5kCOnJgDSoxrA+LozuDzvis2NzLGF9l
         Euq6WBHJYF5qKr+f/DLdH5k/tSfKDW/PfMFDUJGaX0LDhgXkhYr0cq40sfSmHrmAvVcp
         NgcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682175554; x=1684767554;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8Kr78qnpI9OuQgkmiOTZgE/z33fhOWqbthHwc3Rz2Ac=;
        b=RT9VeX7rrFFQz103j4W/l/8U83CxQebdQqpjg2OfXl/ewNPz0AHijZFqWbGXm+2acy
         n/cw8odfFop3godJAJ4gXxVP6gu1K5/viTvcBDPDZpKy77AdXzdxLFykfdHDBjmxs43o
         Rd+DhlRfLj2RVu9eoAe2odXm3w5A5fEfIxX8C40SZe+n3+jKtgW3FSaUypprKDIslAcA
         dmiC8xFhE2gSRJem8MfQWHwlLBJL6iWrB8vzJUB0KoulDXt99+mLFwpNZNSdk0n61wOC
         3RTyKwCGbvIr7cbIWIbyF+wCW/h6IF66iRVPEmSw4bNRRL9ItJhJ/YUEEw3LR/Mi0XZD
         cnLA==
X-Gm-Message-State: AAQBX9ct0POnJ7ouoL4qI/jGYAF2pz9Kv+ZqAccvcoNilE0oUyzBYoK8
        +47AU2W2W1feg/5/MBLOy3A=
X-Google-Smtp-Source: AKy350ZUYsW8Xv56w027YoSdTSAyN3n6sQ71jZaUc7DI4CD3ls5Kn72bbz9HUtEQ1tusezj3/eV2HA==
X-Received: by 2002:a1c:4b07:0:b0:3f0:46ca:f201 with SMTP id y7-20020a1c4b07000000b003f046caf201mr4115128wma.1.1682175553785;
        Sat, 22 Apr 2023 07:59:13 -0700 (PDT)
Received: from localhost ([2a02:168:633b:1:9d6a:15a4:c7d1:a0f0])
        by smtp.gmail.com with ESMTPSA id v7-20020a5d4a47000000b002fe065da369sm6622565wrs.69.2023.04.22.07.59.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Apr 2023 07:59:13 -0700 (PDT)
Date:   Sat, 22 Apr 2023 16:59:11 +0200
From:   =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Quentin Monnet <quentin@isovalent.com>
Subject: Re: [PATCH] mount_setattr.2, openat2.2, bpf-helpers.7, landlock.7:
 wfix
Message-ID: <20230422.e80f61bcbc21@gnoack.org>
References: <20230421150555.5075-1-gnoack3000@gmail.com>
 <d45fce19-e7eb-ed15-3223-df02ba926cc1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d45fce19-e7eb-ed15-3223-df02ba926cc1@gmail.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Apr 21, 2023 at 09:45:15PM +0200, Alejandro Colomar wrote:
> On 4/21/23 17:05, Günther Noack wrote:
> > --- a/man7/bpf-helpers.7
> > +++ b/man7/bpf-helpers.7
> > @@ -3025,7 +3025,7 @@ copied and the last byte is set to NUL.
> >  On success, returns the number of bytes that were written,
> >  including the terminal NUL. This makes this helper useful in
> >  tracing programs for reading strings, and more importantly to
> > -get its length at runtime. See the following snippet:
> > +get its length at run time. See the following snippet:
> 
> Good, but bpf-helpers.7 is generated from kernel sources.  This
> one will depend on what kernel developers want.  I CCed Quentin,
> since he's nice and might be able to tell if BPF guys are
> interested in this kind of wording fixes.

Ah, whoops, that's a good point.

I'll remove that part of the patch then, because the fix would have to
go in the kernel source.

> > --- a/man7/landlock.7
> > +++ b/man7/landlock.7
> > @@ -251,7 +251,7 @@ will stay enforced on all this thread's descendants.
> >  This allows creating standalone and modular security policies
> >  per application,
> >  which will automatically be composed between themselves
> > -according to their runtime parent policies.
> > +according to their run time parent policies.
> 
> In this case, since it works as an adjective, it should be
> "run-time", with a hyphen.

Thanks, good point.  Fixed.

–Günther
