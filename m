Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A4F4064C234
	for <lists+linux-man@lfdr.de>; Wed, 14 Dec 2022 03:20:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236726AbiLNCUh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 13 Dec 2022 21:20:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237093AbiLNCUg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 13 Dec 2022 21:20:36 -0500
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com [66.111.4.25])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89ADD22513
        for <linux-man@vger.kernel.org>; Tue, 13 Dec 2022 18:20:35 -0800 (PST)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.nyi.internal (Postfix) with ESMTP id 02AB25C018C;
        Tue, 13 Dec 2022 21:20:35 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Tue, 13 Dec 2022 21:20:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=owlfolio.org; h=
        cc:cc:content-transfer-encoding:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to; s=fm1; t=1670984434; x=
        1671070834; bh=DPAP/VMxutlTjApMJmKBG8LxpMYP6A/mEaZlqw0lZPc=; b=A
        20K7mWNjfGvEg2YpQlhJAbX+Fpv/KGxy9bU+OukX5IwysIB4xkwDRdiGVlIiiED4
        g+Y1inLvRtABD5YVaKPdr+BCGXDT+YuiNgWxQlxT/yURhm+5Yj4jtlJlf169JgyS
        /r5h+STprNZHFl/woNu6VzlPas3uGjU/zUHrJpPcupFMMSMrn7i14UiGJdPg87oG
        O9MXCXTGgtWym1l/PxDd4AyPKSZs5NV/D8Fnj0YgHj4I24Htj4ksLq1KE7i9vYS9
        s/dXTvRVUZjcFlc+xqE5Awv7PNvqCXSxTEelTzH3ks1DFl3tAoD7oNORrK+lqpuX
        a8Xz/5fGlvsl/nimR8vgg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-transfer-encoding
        :content-type:date:date:feedback-id:feedback-id:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1670984434; x=
        1671070834; bh=DPAP/VMxutlTjApMJmKBG8LxpMYP6A/mEaZlqw0lZPc=; b=F
        vTUnQwAWxOhb1fdgI8dIyt39f/y7aj0RFzUUS+THQNUllwKXGS9O02BrrKUZGxIX
        QBBM0zm4iwTcUgeIJRZa3JTkvukc18pb4c29zduKane3Qx1TWNwxDa294gXD3blw
        YdLZTTQvOPAE79IeDL6jL3V4ezJ0glGFZLjiMIhtvO/1FCTiGiz5J4RCObe5JK8p
        RGCQ4E4E0CyB6df8HqfTWKIOFvbZbUosdcHXJlTUQUlUMNn5njcvv6473vamZ616
        F8WxFnXCKzBDUS3poeMl4A+HpLb10IBwImZtCE2zCjM28dfzk0bEfSGNKD6Ey5lL
        wkSg+vViM4y39c9hqRjTA==
X-ME-Sender: <xms:8jKZY8mN2vOk8KKgNyFuxN7_TyY_f98R3scUjK3L87TGqCsTKMHgJQ>
    <xme:8jKZY70Qs3qaMOsIQfk3seyq3pAUttwpOJTdsq3KVSms2_4s8hA3dvckbe52HwaUP
    vZshYYX7O6qhkC0C2g>
X-ME-Received: <xmr:8jKZY6pG5Gqnl0mhe0e6Vyyt_0bNjD49tzTEJEldGL_BabrQD2pxzkF9tWLhrhgwdQKJWkBLFzfFoXnYdin_lJyaU8ZZKPTPGbNDHQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfedvgdeggecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvfevufhfffgjkfgfgggtgfesthhqofdttderjeenucfhrhhomhepkggrtghk
    ucghvghinhgsvghrghcuoeiirggtkhesohiflhhfohhlihhordhorhhgqeenucggtffrrg
    htthgvrhhnpeehfefftefhkefgudettedvledtueeuvdfhkeeiiedvheefgfdvudffgfeg
    feehheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    iirggtkhesohiflhhfohhlihhordhorhhg
X-ME-Proxy: <xmx:8jKZY4k-SnA_dsP6fw17pYi5zKSYDXU1EJJ8a6jP1FG7hpbemc3nqg>
    <xmx:8jKZY616WzTVLlAw4NRXI0bcLKhFPCxRR7iEdLip9rPdLxV4w-Vodw>
    <xmx:8jKZY_tFjRlRCi-cjzjG0Q8lNqMWPSZYcghxdRjHk8ZWMBDc42ieQw>
    <xmx:8jKZY4BQyHt-U6uEq16eD8FkBLiwsdte1mpoPSbgWyBFCoc0-D02Xw>
Feedback-ID: i876146a2:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 13 Dec 2022 21:20:34 -0500 (EST)
From:   Zack Weinberg <zack@owlfolio.org>
To:     Ian Abbott <abbotti@mev.co.uk>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        libc-alpha@sourceware.org, 'linux-man' <linux-man@vger.kernel.org>
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
References: <20221208123454.13132-1-abbotti@mev.co.uk>
        <5f490d45-b31e-279e-edcb-de4806b8ba54@gmail.com>
        <d1ecf57b-72cf-dbb4-3b4a-b19c7cdc93e9@mev.co.uk>
        <06f70d09-a258-7d6d-4a98-6a89ed761849@gmail.com>
        <6269173b-20cb-7b47-1ad9-6099a9baa052@owlfolio.org>
        <d65cff0c-7aba-8bb3-9a2f-3d07f20517b4@gmail.com>
        <ypikk02xv09c.fsf@owlfolio.org>
        <1f339439-3346-6732-3544-8e0e0a0f9823@mev.co.uk>
Date:   Tue, 13 Dec 2022 21:18:48 -0500
In-Reply-To: <1f339439-3346-6732-3544-8e0e0a0f9823@mev.co.uk> (Ian Abbott's
        message of "Mon, 12 Dec 2022 15:22:05 +0000")
Message-ID: <ypiksfhiafsn.fsf@owlfolio.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Ian Abbott <abbotti@mev.co.uk> writes:

> On 12/12/2022 02:11, Zack Weinberg wrote:
>> Field widths are awkward to use because you have to write them as
>> decimal constants _inside the format string_=E2=80=A6
>
> It's a shame that scanf's maximum field width couldn't be specified
> using an integer parameter in the same was as printf's minimum field
> width, but the '*' flag was already taken!

Yup.  I suppose we could make up another flag =E2=80=A6 =E2=80=98@=E2=80=99=
 isn=E2=80=99t used for
anything =E2=80=A6

zw
