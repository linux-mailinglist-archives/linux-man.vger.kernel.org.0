Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 646464EA5AF
	for <lists+linux-man@lfdr.de>; Tue, 29 Mar 2022 05:04:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230329AbiC2DEF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Mar 2022 23:04:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230106AbiC2DEE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Mar 2022 23:04:04 -0400
X-Greylist: delayed 4202 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 28 Mar 2022 20:02:21 PDT
Received: from 3.mo548.mail-out.ovh.net (3.mo548.mail-out.ovh.net [188.165.32.156])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9372D1FE55C
        for <linux-man@vger.kernel.org>; Mon, 28 Mar 2022 20:02:19 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.109.138.132])
        by mo548.mail-out.ovh.net (Postfix) with ESMTPS id A72481FD71;
        Mon, 28 Mar 2022 22:16:00 +0000 (UTC)
Received: from jwilk.net (37.59.142.97) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.24; Tue, 29 Mar
 2022 00:15:59 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-97G0024ee6fcfd-c1cf-4feb-b050-59dcba8eb2c1,
                    5BC8941282AD13F27FBCCA502C4619D7E7050EA5) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.167
Date:   Tue, 29 Mar 2022 00:15:57 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     Michael Kerrisk <mtk.manpages@gmail.com>,
        <linux-man@vger.kernel.org>, NGINX Unit <unit@nginx.org>
Subject: Re: [PATCH] uri.7: The term URL is deprecated, in favor of URI
Message-ID: <20220328221557.njqx4jtbvrgv44lc@jwilk.net>
References: <20220328182707.6935-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20220328182707.6935-1-alx.manpages@gmail.com>
X-Originating-IP: [37.59.142.97]
X-ClientProxiedBy: DAG5EX1.mxp6.local (172.16.2.41) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 01571bea-53bb-4889-bbf3-0fccbc9268ad
X-Ovh-Tracer-Id: 3719973295064078304
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvvddrudehkedgtdejucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjihesthdtredttddtvdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepteelvdefhfegieehkeegudejtdefieduuedutddugfegfefhieeivdetvdfgfefhnecuffhomhgrihhnpeifhhgrthifghdrohhrghenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddrleejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopehunhhithesnhhgihhngidrohhrgh
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar <alx.manpages@gmail.com>, 2022-03-28, 20:27:
>See RFCs 4395 (obsoleted by 7595) and 7595.
>
>So, since URI and URL have been used as synonims

s/synonim/synonym/ (here and elsewhere)

>the RFCs seem to have explicitly avoided URL, and now use URI as the 
>only term, which still means what it meant (so now URL is just a 
>synonim for URI).

No, as far as RFCs are concerned, URLs are a proper subset of URIs; they 
are not synonyms.

>This commit replaces (almost all) occurences of URL by URI, except when 
>it is referring to the old term itself.  Keep some legacy info just for 
>readers to understand this.

I'm not sure this is a step in the right direction. As a data point, in 
contrast to IETF, WHATWG standardized on the term "URL":
https://url.spec.whatwg.org/#goals

-- 
Jakub Wilk
