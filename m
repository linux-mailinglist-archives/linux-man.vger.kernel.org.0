Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E8A96D877A
	for <lists+linux-man@lfdr.de>; Wed,  5 Apr 2023 21:56:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230489AbjDET4a (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 5 Apr 2023 15:56:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231767AbjDET43 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 5 Apr 2023 15:56:29 -0400
Received: from mx10.gouders.net (mx10.gouders.net [202.61.206.94])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C90A121
        for <linux-man@vger.kernel.org>; Wed,  5 Apr 2023 12:56:28 -0700 (PDT)
Received: from localhost (ip-109-42-176-62.web.vodafone.de [109.42.176.62])
        (authenticated bits=0)
        by mx10.gouders.net (8.17.1.9/8.16.1) with ESMTPSA id 335JuFCw025526
        (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
        Wed, 5 Apr 2023 21:56:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gouders.net; s=gnet;
        t=1680724575; bh=Xe+AML/oOjKFDX8EIwSFcxghSjLV8e9/y9wMKEArEh8=;
        h=From:To:Cc:Subject:In-Reply-To:References:Date;
        b=R1uOPbKDlO2RNm2Zh1FG294czqbkwuC1xJsKzu+WG3j3IalWCDBDI9uQxyWNcLbuD
         +LvH3tnxdOQDr2dLnmuHcb6PHT4GkCjPIesVuDiRffiVKunyVzMlHZsWVrKrAcs/jG
         HH+rnVDa0gx3mhuvUGtwtXr48ZtWLg7s8rNTpMhg=
From:   Dirk Gouders <dirk@gouders.net>
To:     Eli Zaretskii <eliz@gnu.org>
Cc:     arsen@aarsen.me, alx.manpages@gmail.com, linux-man@vger.kernel.org,
        help-texinfo@gnu.org
Subject: Re: Playground pager lsp(1)
In-Reply-To: <83zg7mqha4.fsf@gnu.org> (Eli Zaretskii's message of "Wed, 05 Apr
        2023 22:07:47 +0300")
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
        <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com>
        <ghedoy8x5y.fsf@gouders.net> <87y1n6o1b3.fsf@aarsen.me>
        <ghpm8iyzqj.fsf@gouders.net> <83zg7mqha4.fsf@gnu.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
Date:   Wed, 05 Apr 2023 21:56:10 +0200
Message-ID: <ghlej6yug5.fsf@gouders.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Eli Zaretskii <eliz@gnu.org> writes:

>> From: Dirk Gouders <dirk@gouders.net>
>> Cc: Alejandro Colomar <alx.manpages@gmail.com>, linux-man@vger.kernel.or=
g,
>>  help-texinfo@gnu.org
>> Date: Wed, 05 Apr 2023 20:01:56 +0200
>>=20
>> Arsen Arsenovi=C4=87 <arsen@aarsen.me> writes:
>>=20
>> >>>>        =E2=80=A2   In windowing environments lsp does complete resi=
zes when windows
>> >>>>            get resized. This means it also reloads the manual page =
to fit the
>> >>>>            new window size.
>> >>>
>> >>> Good.  This I miss it in less(1) often.  Not sure if they had any st=
rong
>> >>> reason to not support that.
>> >>
>> >> Unfortunately, info(1) also doesn't do full resizes (on my system).
>> >
>> > Do you mean the info pages' column limit or that the viewer itself
>> > doesn't resize to fit the frame?  The latter would be a bug.
>>=20
>> Yes, I meant the column limit.  Sorry for not having expressed this very
>> clear.
>
> Info files are formatted already, you cannot ask the reader to
> reformat them for a different line length.

Thank you for that explanation; I didn't know that and now understand
info(1)'s behavior.

Dirk

> With man pages this is only possible if you never keep the formatted
> pages and reuse them once they were produced.
