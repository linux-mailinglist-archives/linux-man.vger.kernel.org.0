Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A7FC56589C4
	for <lists+linux-man@lfdr.de>; Thu, 29 Dec 2022 07:44:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231145AbiL2Gon (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Dec 2022 01:44:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229644AbiL2Gol (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Dec 2022 01:44:41 -0500
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com [66.111.4.29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D470E1183F
        for <linux-man@vger.kernel.org>; Wed, 28 Dec 2022 22:44:40 -0800 (PST)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
        by mailout.nyi.internal (Postfix) with ESMTP id 1171B5C02F0;
        Thu, 29 Dec 2022 01:44:40 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Thu, 29 Dec 2022 01:44:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=owlfolio.org; h=
        cc:cc:content-transfer-encoding:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to; s=fm1; t=1672296280; x=
        1672382680; bh=SkkxLv8BJD+h/KK34HSmdPjhh+yfOXjmMW934ZKa+K4=; b=Z
        9ulp1ziRZxhA20CTZn5QtDeRAVv9/LLe9KBwafxfMAgeYG/xFXY0qXQB4ECyFRta
        dX13K3bggPx+/cUHMj6BosCTL9aZ3KelA7ZsW8voQlZEhDXUl8jM1ypp1ndap07j
        pOFozQD5T5ndsTTsrkcUpSdw8UpQYHA6R3w5qaMF6124+Oj3ILCRxTnLb+A3TwgW
        +WFOAvWD0sE/fdxDx+/q3kM1VKgJI2PpRs8ks4CU1O30YKUyCcbHraAes2fnikkE
        UDsLqHkfLVvQadp/RlC0VYiSPzgPURJwv5AxOjONMiRrmvHkODdXHorq0hu/fyRG
        MPdU7vXN8NrwL86WQtlag==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-transfer-encoding
        :content-type:date:date:feedback-id:feedback-id:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1672296280; x=
        1672382680; bh=SkkxLv8BJD+h/KK34HSmdPjhh+yfOXjmMW934ZKa+K4=; b=P
        khlU/y5feGbUr+s2XxNh/uWrqQisWOIwWcJ40D1/nCY+F736diIr/Xu8RuyO/zg5
        3HB/aloVddN53TjNAwKKBzjQGvluzd4VNKNU8jLpxfR+Qh+KoOeRxUFprYDkopIx
        tv0SS6K1JCiMZGzvmkpbOnHhrDoGD24ZwjrainRGL/WxzNx0vvUtlyOzx0UY9A30
        u3ja77DzGA5biSAkrjbY7HgFFxbEgtpHrC0zx75RBMp01YHgCCjXgOxmZs9Tp68D
        UrfVZmSkqlHTkZmbmz0qJRLyT/i55R+xlBBAYmSZ+9d849qN6+2GRbwzZyUzA5kC
        2sSgmQQCXG04B2kVgn34Q==
X-ME-Sender: <xms:VzetY6RDvdjSmK2-V5XbFf-tSjxPpU1DWJNhviy0Jmwx1s6En4pPyw>
    <xme:VzetY_xAgS4TZB9hRcIuC3xy5iGSQco3FWavDwC7S3o3HceNiQ7g4st4DuatmkNS6
    Bf7vUKxO6TnZ6RRAUc>
X-ME-Received: <xmr:VzetY31rG1UGhqwyFLm8StHJYUvmOoTET6-1VZYnUQ-ubq7jU1d5cgj-vZ4ZhzgUkeM3QftjavOZ53EHQNRsnoi_309ODqylIakrGwzSuQA7Ow>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrieefgdellecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffkffhvfevufgjfhgfgggtgfesthhqredttderuhenucfhrhhomhepkggrtghk
    ucghvghinhgsvghrghcuoeiirggtkhesohiflhhfohhlihhordhorhhgqeenucggtffrrg
    htthgvrhhnpeeitdegjefghfdukeehkeeffeevvdefudfgjeffffetiefgkefgvdefleei
    udevtdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    iirggtkhesohiflhhfohhlihhordhorhhg
X-ME-Proxy: <xmx:VzetY2B-XqHaI6lZ6gJGK3tCw0-iJKDj3OJX5edY_VRswGteYKlPtQ>
    <xmx:VzetYzjTiZc1MvYWUZ4xzTmDz8AwiHr1TSqaq-WgVtmsILTBx8n2jQ>
    <xmx:VzetYyrb-SGHJeSiA7A9nvSDDxcsuV0v-vYjBi33rHmoko2ZqO9M6A>
    <xmx:WDetY2sP1y7C_6P7n3F3rWOdGNqJc_ikK4LuU93qHpQW2e-1Vrp9vw>
Feedback-ID: i876146a2:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 29 Dec 2022 01:44:38 -0500 (EST)
Date:   Thu, 29 Dec 2022 01:42:38 -0500
Message-ID: <ypiktu1eogm9.wl-zack@owlfolio.org>
From:   Zack Weinberg <zack@owlfolio.org>
To:     Ian Abbott <abbotti@mev.co.uk>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        libc-alpha@sourceware.org, 'linux-man' <linux-man@vger.kernel.org>
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
In-Reply-To: <d5c2f98f-5341-eb19-b54e-6d049f80de8d@mev.co.uk>
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
        <d5c2f98f-5341-eb19-b54e-6d049f80de8d@mev.co.uk>
User-Agent: Wanderlust/2.15.9 (Almost Unreal)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=ISO-8859-7
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, 14 Dec 2022 06:03:07 -0500, Ian Abbott wrote:
> And would ERANGE cause scanf to return EOF in the fixed
> implementation?

In the counterfactual universe where I actually patch scanf, yes.

> That seems like it would break a lot of existing code
> (even though it is currently UB).  It would probably be better to
> silently set errno to ERANGE without returning EOF

My intuition says it=A2s the other way around.  What existing code do
you expect will break?

zw
