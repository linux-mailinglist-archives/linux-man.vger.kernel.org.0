Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 19FAF7505A8
	for <lists+linux-man@lfdr.de>; Wed, 12 Jul 2023 13:11:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231641AbjGLLL5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 Jul 2023 07:11:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230022AbjGLLL4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 Jul 2023 07:11:56 -0400
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7D1E10FC
        for <linux-man@vger.kernel.org>; Wed, 12 Jul 2023 04:11:52 -0700 (PDT)
Received: from submission (posteo.de [185.67.36.169]) 
        by mout01.posteo.de (Postfix) with ESMTPS id 09CC7240028
        for <linux-man@vger.kernel.org>; Wed, 12 Jul 2023 13:11:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
        t=1689160305; bh=7iEqVhvDB4W29RROrWgbRphMBvMevWtHz9WNcmKt6ZE=;
        h=Mime-Version:Content-Transfer-Encoding:Date:Message-Id:Cc:Subject:
         From:To:From;
        b=pBpn/2fT+7uPm9ETHtIlbj2j3PkpE0M9zUJBBfLtet7JNwNS3obK259m0IM6HJ2vb
         Ky6UD2+BalzefOCTUUe53sA2vDZAiLFMAaJ4O1dWup1ZgvWRdQ09YmSvhmmftTU0F6
         m3YIOoFXaoI16oQH5o+dLQ+yJ0MdQjhnULdtAgoWCZtcjOND79mDzCHQf7Rc74w9xp
         4Qws2w72IEMYqPRoL35Jx+TxosSP1Mm7cVSi5Xj00sfStdZrqVagnv0Ph61cNrLe+w
         Ua3s/4F4goaPditD9mNg/GCmrxQNqcqkX9k+LB7ZD1ypdKKIwnjVLXWhavIVK3EynY
         tZ0b9FCAFHl6Q==
Received: from customer (localhost [127.0.0.1])
        by submission (posteo.de) with ESMTPSA id 4R1FS02xzJz6tw8;
        Wed, 12 Jul 2023 13:11:44 +0200 (CEST)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date:   Wed, 12 Jul 2023 11:10:04 +0000
Message-Id: <CU05BHAWN21Y.98KQTC6T5HQH@morphine>
Cc:     <linux-man@vger.kernel.org>
Subject: Re: [PATCH] rtnetlink.7: Document IFLA_PERM_ADDRESS
From:   "Tom Schwindl" <schwindl@posteo.de>
To:     "Linus Heckemann" <git@sphalerite.org>,
        "Alejandro Colomar" <alx@kernel.org>
References: <20230711211350.1247303-1-git@sphalerite.org>
In-Reply-To: <20230711211350.1247303-1-git@sphalerite.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Linus,

On Tue Jul 11, 2023 at 11:13 PM CEST, Linus Heckemann wrote:
> ---
>  man7/rtnetlink.7 | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/man7/rtnetlink.7 b/man7/rtnetlink.7
> index 2ce541c37..6061b5fd4 100644
> --- a/man7/rtnetlink.7
> +++ b/man7/rtnetlink.7
> @@ -105,6 +105,7 @@ IFLA_QDISC:asciiz string:Queueing discipline
>  IFLA_STATS:T{
>  see below
>  T}:Interface Statistics
> +IFLA_PERM_ADDRESS:hardware address:hardware address provided by device (=
since 5.5)
>  .TE
>  .IP
>  The value type for

As far as I can see this was already done by commit e10078cd496e5471.

--=20
Best Regards,
Tom Schwindl
