Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E6357436D0
	for <lists+linux-man@lfdr.de>; Fri, 30 Jun 2023 10:16:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232383AbjF3IP7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jun 2023 04:15:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230158AbjF3IP6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Jun 2023 04:15:58 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5D7E2D60
        for <linux-man@vger.kernel.org>; Fri, 30 Jun 2023 01:15:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1688112899;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=U9SXZ41nWzXYQGojwHmeXRkIbNNW8TxZ3Dh//tfb044=;
        b=dukQ/zrheyeS9P68igjaX+PKo3UzhypRAcJRd2o2OmuxUB/+DSJwwon614Kmare50p5B2o
        JfJ00zNLnaazhXGjoGoS0WB3fcvS78qjNsxZZ2NCKkga9QI96qa20WxNYQ9pFyNLgAnZhz
        3/8gI5OclcDniZj8jZ5v01bxxh6Y1bs=
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-50-jaqsaj7APr2kOIPyEQ9Obw-1; Fri, 30 Jun 2023 04:14:57 -0400
X-MC-Unique: jaqsaj7APr2kOIPyEQ9Obw-1
Received: by mail-lj1-f198.google.com with SMTP id 38308e7fff4ca-2b69de8fb27so14634531fa.3
        for <linux-man@vger.kernel.org>; Fri, 30 Jun 2023 01:14:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688112896; x=1690704896;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U9SXZ41nWzXYQGojwHmeXRkIbNNW8TxZ3Dh//tfb044=;
        b=CNGp//+Fb1vMRdx+IXs3MVSA7S+Vbm/Lhddj5b8ipegzDXGSeH1fxXouRvmIn03eRf
         AI5VI7YmMcotJQDyGLV2KnbqWLjCDCT5Syh9BbuVmUzvQouvS2EqAbcsBusEXZQtpM0f
         lcFLKe7n4IQfOv9lZKEFJGlofW6ncbT9AKXT7FJHj6+JSXm7+/7IXzrNR0B6yjmsNAW8
         ygg8KFXIHZZ1MlDYkoxxHlx+a8tWkr1mdudi4qeX8t69J4FZOFr7+8WhpvvAtsqFlPPa
         6pUODJ3sVe77C8/cgjztwJUDBg1R5RmIdgoEj/pb7Vj+Fb1bioGT0U/aSWLR81z0CwTt
         r69Q==
X-Gm-Message-State: ABy/qLY2So/nyi949Z+zE9y5lSDPIL21BwGBE0fU2IScs6wl2N3dF+Sz
        lf/txiYAcbAuuE+WwSORKzQl7g6BUK6UCub11DHDzrASfPBbj/WRs99Uk4CBI5MgIkmcSi2JWAU
        E2M/928J1SvhpvX8G72HtSiCYmjWCHU8cJawC
X-Received: by 2002:a2e:9608:0:b0:2b6:a22b:42dc with SMTP id v8-20020a2e9608000000b002b6a22b42dcmr1249803ljh.16.1688112896206;
        Fri, 30 Jun 2023 01:14:56 -0700 (PDT)
X-Google-Smtp-Source: APBJJlEDgdh/wR+7egI8OCeduQFdzU1TEphmhAoRE8SbDBChcmTlRGUN4CveKs787CTf44mTXZB0Waeq69cF8XjF1p4=
X-Received: by 2002:a2e:9608:0:b0:2b6:a22b:42dc with SMTP id
 v8-20020a2e9608000000b002b6a22b42dcmr1249792ljh.16.1688112895945; Fri, 30 Jun
 2023 01:14:55 -0700 (PDT)
MIME-Version: 1.0
References: <20230628175329.GA16113@brightrain.aerifal.cx> <add1e27e-e10c-e70d-ed5e-85bb0d4d4101@cs.ucla.edu>
 <20230628191525.GS20050@brightrain.aerifal.cx> <8e65a459-a933-38b4-5f82-f7016c107d91@cs.ucla.edu>
 <CACb0b4nkLFOi4q=SSBSD_7aH4FRt9H4sRHQz6wF5O-x9PiwnFA@mail.gmail.com>
In-Reply-To: <CACb0b4nkLFOi4q=SSBSD_7aH4FRt9H4sRHQz6wF5O-x9PiwnFA@mail.gmail.com>
From:   Jonathan Wakely <jwakely@redhat.com>
Date:   Fri, 30 Jun 2023 09:14:44 +0100
Message-ID: <CACb0b4=uq=Sa=SdqbAu4KovfsJfowm6cz4tjyQ-YYaHX9z_Fxg@mail.gmail.com>
Subject: Re: [libc-coord] Re: regression in man pages for interfaces using loff_t
To:     libc-coord@lists.openwall.com
Cc:     Rich Felker <dalias@libc.org>, linux-man@vger.kernel.org,
        musl@lists.openwall.com, libc-alpha@sourceware.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, 30 Jun 2023 at 09:02, Jonathan Wakely wrote:
>
> On Fri, 30 Jun 2023 at 08:11, Paul Eggert wrote:
>>
>> On 2023-06-28 12:15, Rich Felker wrote:
>>
>> > There's also the problem that off64_t is "exactly 64-bit" which makes
>> > it unsuitable as an interface type for cross-platform functions where
>> > one could imagine the native type being larger (rather horrifying but
>> > possible).
>>
>> Although we won't have files with 2**63 bytes any time soon, this is the
>> best argument for preferring "loff_t" to "off64_t".
>>
>> But come to think of it, it'd be better to document the type simply as
>> "off_t", with a footnote saying the equivalent of "this assumes that on
>> 32-bit glibc platforms you compile with -DFILE_OFFSET_BITS=3D64 like any
>> sane person would." The intent really is off_t here, and that will
>> remain true even if off_t ever widens past 64 bits.
>>
>> All the apps I know that use the syscalls in question simply pass
>> values that fit in off_t to these functions, and this will work
>> regardless of whether these apps are compiled with 64- or (horrors!)
>> 32-bit off_t. Admittedly the footnote solution would not be perfect, but
>> it's good enough, and it would sidestep the loff_t vs off64_t confusion.
>
>
> For APIs like copy_file_range(2) and splice(2) the arguments are loff_t* =
so you can't just "pass arguments that fit in off_t" to them. You have to g=
et the pointer type correct, because writing 64-bits through a 32-bit off_t=
 would be bad. And in C++ it won't even compile unless you get the pointer =
types exactly right (C compilers will typically allow the mismatch with jus=
t a warning).
>
> People miss footnotes. I would really prefer if the signature shown in th=
e man page used a type that will actually compile. If it shows off_t, that =
won't compile for 32-bit systems without LFS support enabled.

Apologies for sending the mail above as HTML - replying as text/plain
for those it didn't reach.

