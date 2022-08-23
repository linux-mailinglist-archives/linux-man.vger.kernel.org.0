Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 11E0559D2D3
	for <lists+linux-man@lfdr.de>; Tue, 23 Aug 2022 09:59:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240654AbiHWH7E (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 23 Aug 2022 03:59:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241448AbiHWH7C (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 23 Aug 2022 03:59:02 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 997871E3F8
        for <linux-man@vger.kernel.org>; Tue, 23 Aug 2022 00:59:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1661241540;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=ppu5ZJPTykE1mm1fm8ScUeo5vN0+pNCvXSsL/8Tq/tY=;
        b=JTkTq7aK2BXU8V6O/roYeVNDIYKeSaPLnHL8Dwwp7aiIL1tqVmq1WXuyiRNpI2eZH2FCiK
        BiSzWKkNojXVah9BqbtulorRVpexTqGnojWY/RPewgpy1jsUDtooe8MIEy+P6HYuRQF9L5
        yHhNUIEf7NcDM9J4sC/jhhpnJB5za0I=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-339-8eIs7XB_NuC-nvrYtC1DVg-1; Tue, 23 Aug 2022 03:58:57 -0400
X-MC-Unique: 8eIs7XB_NuC-nvrYtC1DVg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A846A1C14D32;
        Tue, 23 Aug 2022 07:58:56 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.39.192.143])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 67DEB2166B26;
        Tue, 23 Aug 2022 07:58:55 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, JeanHeyd Meneide <wg14@soasis.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Ingo Schwarze <schwarze@usta.de>
Subject: Re: [PATCH v2] _Generic.3: New page documenting _Generic()
References: <20220820171009.34196-1-alx.manpages@gmail.com>
        <20220821115506.22850-1-alx.manpages@gmail.com>
Date:   Tue, 23 Aug 2022 09:58:53 +0200
In-Reply-To: <20220821115506.22850-1-alx.manpages@gmail.com> (Alejandro
        Colomar's message of "Sun, 21 Aug 2022 13:55:07 +0200")
Message-ID: <87mtbv4chu.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar:

> +.SH EXAMPLES
> +The following program demonstrates how to write
> +a replacement for the standard
> +.BR imaxabs (3)
> +function, which being a function can't really provide what it promises:
> +seamlessly upgrading to the widest available type.
> +.PP
> +.\" SRC BEGIN (_Generic.c)
> +.EX
> +#include <stdint.h>
> +#include <stdio.h>
> +#include <stdlib.h>
> +
> +#define my_imaxabs(j)  _Generic((intmax_t) 0,  \e
> +    int:            abs(j),                    \e
> +    long:           labs(j),                   \e
> +    long long:      llabs(j)                   \e
> + /* long long long: lllabs(j) */               \e
> +)

The macro name does not really match what the function does.  It's a
type-generic abs function, not related to the max function or intmax_t.

Note that this approach does not really work that well in practice
because macros using _Generic expand all the alternatives (in current
implementations; doing this differently requires deviating from the
layered implementation strategy suggested in the C standard).  This
means that _Generic-using macros can only be nested maybe three or four
levels deep, depending on the number of _Generic alternatives on each
level.  For <tgmath.h>, this is really not enough, so a high-quality
implementation of <tgmath.h> using _Generic is not feasible.  GCC
provides __builtin_tgmath, which is designed in such a way that when
used in a macro, the macro argument is only expanded once.

Maybe mention this under BUGS?

C++ templates do not suffer from this particular problem.

Thanks,
Florian

