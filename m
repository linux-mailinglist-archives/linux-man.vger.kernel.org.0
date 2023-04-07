Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 44F726DAF61
	for <lists+linux-man@lfdr.de>; Fri,  7 Apr 2023 17:07:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240884AbjDGPHg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Apr 2023 11:07:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240765AbjDGPHS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Apr 2023 11:07:18 -0400
Received: from eggs.gnu.org (eggs.gnu.org [IPv6:2001:470:142:3::10])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18B63BB8A
        for <linux-man@vger.kernel.org>; Fri,  7 Apr 2023 08:06:17 -0700 (PDT)
Received: from fencepost.gnu.org ([2001:470:142:3::e])
        by eggs.gnu.org with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.90_1)
        (envelope-from <eliz@gnu.org>)
        id 1pknfE-00017R-D8; Fri, 07 Apr 2023 11:06:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=gnu.org;
        s=fencepost-gnu-org; h=MIME-version:References:Subject:In-Reply-To:To:From:
        Date; bh=WVwRvixON6uJcpUrJdu977vIjwi9/Uu6e3ddm3uHLIE=; b=bM0tbWaLrEWz1qW0A80M
        G+XaKfa+Gm/yN69YrP9cTMSv3An/ZsxiLZksHBEjcT/jLFgG5ILfOsJ0Q9hTsDJ4D0/fKap+UzVLd
        UEcQshTntKGo7uwXsRFj/PHBp0Df3OXmSKFjK2iUZumgAf2iJVFZwa1CFxvoi9sPdYQUNtX789rhY
        xGEePEiY4VeBkop44VX6RTUJDr1KtLGvA3E7viBpvTqnikmi2m8j1NUhlEKtCsXMyBpNusop5rTao
        o6dztl0E45QnYkOWzxQEjXJZWZKXR78P3QkQg45YgFPpOhJtAz+FEYsYVL0WXueEXVIvesNvgnReQ
        YV7mILG0/yn9Rw==;
Received: from [87.69.77.57] (helo=home-c4e4a596f7)
        by fencepost.gnu.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.90_1)
        (envelope-from <eliz@gnu.org>)
        id 1pknfD-0004V9-TY; Fri, 07 Apr 2023 11:06:08 -0400
Date:   Fri, 07 Apr 2023 18:06:39 +0300
Message-Id: <83fs9bohog.fsf@gnu.org>
From:   Eli Zaretskii <eliz@gnu.org>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     alx.manpages@gmail.com, dirk@gouders.net, cjwatson@debian.org,
        linux-man@vger.kernel.org, help-texinfo@gnu.org, groff@gnu.org
In-Reply-To: <20230407144319.iju3v3os2a7kngp2@illithid>
        (g.branden.robinson@gmail.com)
Subject: Re: man page rendering speed (was: Playground pager lsp(1))
References: <ghileoo9dk.fsf@gouders.net>
 <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com>
 <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
 <20230407021822.3grfnenicwjhdive@illithid>
 <83fs9cp5b9.fsf@gnu.org> <20230407144319.iju3v3os2a7kngp2@illithid>
MIME-version: 1.0
Content-type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_PASS,
        SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> Date: Fri, 7 Apr 2023 09:43:19 -0500
> From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> Cc: alx.manpages@gmail.com, dirk@gouders.net, cjwatson@debian.org,
> 	linux-man@vger.kernel.org, help-texinfo@gnu.org, groff@gnu.org
> 
> ...which brings me to the other factor, of which I'm more confident: man
> page rendering times are much lower than they were in Unix's early days.
> 
> On my system, all groff man pages but one render in between a tenth and
> a fortieth of a second.  The really huge pages like groff(7),
> groff_char(7), and groff_diff(7) are toward the upper end of this range,
> because they are long, at ~20-25 U.S. letter pages when formatted for
> PostScript or PDF, or have many large tables so the tbl(1) preprocessor
> produces a lot of output.
> 
> The outlier is groff_mdoc(7) at just over one-third of a second.

Some people consider 0.1 sec, let alone 0.3 sec, to be long enough to
be annoying.

Also, did you try with libpng.3 or gcc.1?

>   Human subjects need a minimum of about 0.1 second of visual experience
>   or about .01 to .02 second of auditory experience to perceive
>   duration; any shorter experiences are called instantaneous.
>   -- Encyclopædia Britannica[2]

IME, 0.05 sec of visual experiences is closer to reality.

Anyway, I won't argue.
