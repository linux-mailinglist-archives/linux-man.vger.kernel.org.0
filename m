Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 28D45658F1E
	for <lists+linux-man@lfdr.de>; Thu, 29 Dec 2022 17:37:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229699AbiL2Qhy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Dec 2022 11:37:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229685AbiL2Qhx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Dec 2022 11:37:53 -0500
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com [66.111.4.26])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDC08BCAF
        for <linux-man@vger.kernel.org>; Thu, 29 Dec 2022 08:37:52 -0800 (PST)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.nyi.internal (Postfix) with ESMTP id E85F75C00C4;
        Thu, 29 Dec 2022 11:37:48 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Thu, 29 Dec 2022 11:37:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=owlfolio.org; h=
        cc:cc:content-transfer-encoding:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to; s=fm1; t=1672331868; x=
        1672418268; bh=03RvTwlfPlLqq8GlYnm7nm/xsEYqc5c3Dg5rQGoy4Jg=; b=0
        uMZNhl/CiRe8v2ePEXhgBuidb/JtUBLex03GJUTtrHEMC2VKRQkAyMk26BuokIvK
        FYWkogS472GWDKQLOXIdbthuVOsfw19YcWPl13Dri1SDHf5wGJeAapC6JPND6Fc+
        4RZB3KOHr+j7kL7nfvv1tVBIFf0jB8yIiLRBH01MQwwaP7SGQ1XWtpgA8BiTXvxN
        Wg/8tuZV2IdfnW9i6V1oPch6FbbFdcPrqTD94df1rjyk6uTsZ7WiC2BUZxyVxiIJ
        ZBoJ6FzOvAX9aPegMeAggDGcOmZyKgmf9q8YCGI9dZuxz7ZhllMudLJ1AJiNjV95
        iM/4DD/+wYXjdjXTk8XOw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-transfer-encoding
        :content-type:date:date:feedback-id:feedback-id:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1672331868; x=
        1672418268; bh=03RvTwlfPlLqq8GlYnm7nm/xsEYqc5c3Dg5rQGoy4Jg=; b=X
        lZYI02l/VHuUSrO/Lwi/mDsEeKNC0QHrHk5/iUmXvcf8OgPMDyfHwRdkGR6da1Z8
        Ypv8hUJ9EPpjyFtN4Vl3Nr8XbXC4QEpQERZUt2Hgogd0uHp1E/TvqE3iV7It7Dqg
        p9zmTSiuq7mFrqMqgXzYmy+ByQ7SijWaZAqIhTXHHaVrMI1ZS6ZRmHdpam+dZe8v
        /hvZSRCfe465pT0UUJmlvnuGQPTy2gK6r+4LqpVdJwIuVRgOcxDqTGZ+UEddY1Uz
        unhEtsd/FDqtYpRNyjC0kB0YO0fl11+5UmlO+rZSUBRx2iQcMavSV0ivrCNvJJj0
        CYH19yjGj1xp0WjVGnl5g==
X-ME-Sender: <xms:XMKtY3_u5DiBObRaiKigKOAGDaCJdt39qnia5MxxddUiYRz_FAq2og>
    <xme:XMKtYzvCyS6kiStaViyWecI4TMGXpFBBL9nrK7FTKyV9WZ84JwxmMdlYW03bHV4iM
    2-LAw3Ee-zM9LaY5DE>
X-ME-Received: <xmr:XMKtY1ANLWDqyLIS0rF0YX2TQp6_WVwjIY3QSZ_y0dRBEagRpM_QUwieWi24HDCqQTz0Txf021zcxO9CKNAn3Xe_2Vh0bTX7iG0y5d2EAhxhhQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrieeggdeludcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffkffhvfevufgjfhgfgggtgfesthhqredttderuhenucfhrhhomhepkggrtghk
    ucghvghinhgsvghrghcuoeiirggtkhesohiflhhfohhlihhordhorhhgqeenucggtffrrg
    htthgvrhhnpeeitdegjefghfdukeehkeeffeevvdefudfgjeffffetiefgkefgvdefleei
    udevtdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    iirggtkhesohiflhhfohhlihhordhorhhg
X-ME-Proxy: <xmx:XMKtYzf3x1ceZ--IwOFjorY7lEowZIeC92A79QPiPyHZFdQd1pKUOA>
    <xmx:XMKtY8NwN91llq5juB_3dN_oeHDNpi899JkSuW21ykdpqWWE127L6Q>
    <xmx:XMKtY1nRlI558PADAvnDwKyCG2d_bdhgGmKAlw3f7dojAcsL5VCgdQ>
    <xmx:XMKtY1azKBmu2m8KEzFzhFW-pEYiElAgpQs9pEG_gfWnLGkGuaw4sQ>
Feedback-ID: i876146a2:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 29 Dec 2022 11:37:47 -0500 (EST)
Date:   Thu, 29 Dec 2022 11:35:45 -0500
Message-ID: <ypikv8lugobi.wl-zack@owlfolio.org>
From:   Zack Weinberg <zack@owlfolio.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     libc-alpha@sourceware.org, 'linux-man' <linux-man@vger.kernel.org>,
        Ian Abbott <abbotti@mev.co.uk>
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
In-Reply-To: <c5b7ba41-4c18-5d78-43c2-fc9f088298db@gmail.com>
References: <20221208123454.13132-1-abbotti@mev.co.uk>
        <5f490d45-b31e-279e-edcb-de4806b8ba54@gmail.com>
        <d1ecf57b-72cf-dbb4-3b4a-b19c7cdc93e9@mev.co.uk>
        <06f70d09-a258-7d6d-4a98-6a89ed761849@gmail.com>
        <6269173b-20cb-7b47-1ad9-6099a9baa052@owlfolio.org>
        <d65cff0c-7aba-8bb3-9a2f-3d07f20517b4@gmail.com>
        <ypikk02xv09c.fsf@owlfolio.org>
        <a7a60a45-afb2-2fae-f6b0-a26db649c09c@gmail.com>
        <ypikwn6uag11.fsf@owlfolio.org>
        <4fe9ed93-8fb9-64d0-26f1-a9560387d108@gmail.com>
        <ypikv8luogqp.wl-zack@owlfolio.org>
        <c5b7ba41-4c18-5d78-43c2-fc9f088298db@gmail.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=ISO-8859-7
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

On Thu, 29 Dec 2022 05:47:06 -0500, Alejandro Colomar wrote:
> On 12/29/22 07:39, Zack Weinberg wrote:
> > To be clear, I personally don=A2t have plans to do any of the actual
> > programming or standard-changing work involved here.  :-)
>=20
> Ah, no, I meant more that the whole set of glibc maintainers had that
> in mind, as a long term plan (like 10 years maybe?).

Oh, OK.  Yeah, changes to the standard can easily take that long.

> Before you start writing patches, I'm considering the following, which
> is my way to say don't use these functions without deprecating them:
>=20
> Split FILE and char* functions into separate manual pages.  In the one
> for [v]sscanf(3), I'd keep the current documentation.  In the one for
> FILE functions, I'd keep it very short, defering to sscanf(3) for
> documentation of things like conversion specifiers, and that page
> would only cover the bugs^Wdifferences that apply only to FILE
> functions.

That seems like a good way forward to me.

zw
