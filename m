Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F4C664CE32
	for <lists+linux-man@lfdr.de>; Wed, 14 Dec 2022 17:38:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237959AbiLNQis (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Dec 2022 11:38:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239046AbiLNQio (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 14 Dec 2022 11:38:44 -0500
Received: from esa2.mentor.iphmx.com (esa2.mentor.iphmx.com [68.232.141.98])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDDABBC00
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 08:38:42 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.96,244,1665475200"; 
   d="scan'208";a="90223808"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
  by esa2.mentor.iphmx.com with ESMTP; 14 Dec 2022 08:38:41 -0800
IronPort-SDR: U1nctBd8huWQtng52A4YrGSZoMiQPzDr762fdrMO+69lsFwqxdftTg4ec47fNVfp+EWXz58ATn
 5RaqrKEhnbQdfjR9jrTaa+LAeApaCzhlQKAngEQvO9VcWMglaH2WsK4hn+n3lm0Pu95XqlCjDj
 4Wp4VCpn3ufGZk0HdL2Gre5gQyTwfmvhfKEyi47J1zmwrmdlEG+hCYjefRe1LnBTUaReHRCXAx
 zCgrtSfrekkGQ4A9gh/6p1Qr62od4dBJaS1yhRTyZO+eIdJuYLTkMQxWz/r7mm06XfkARzHLFS
 DXM=
Date:   Wed, 14 Dec 2022 16:38:36 +0000
From:   Joseph Myers <joseph@codesourcery.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     Ian Abbott <abbotti@mev.co.uk>, Zack Weinberg <zack@owlfolio.org>,
        <libc-alpha@sourceware.org>,
        'linux-man' <linux-man@vger.kernel.org>
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
In-Reply-To: <dc7e92ad-8b69-fd78-3547-565ed86fa992@gmail.com>
Message-ID: <5a23f5f3-7291-d43d-4982-54eac5e4afd@codesourcery.com>
References: <20221208123454.13132-1-abbotti@mev.co.uk> <5f490d45-b31e-279e-edcb-de4806b8ba54@gmail.com> <d1ecf57b-72cf-dbb4-3b4a-b19c7cdc93e9@mev.co.uk> <06f70d09-a258-7d6d-4a98-6a89ed761849@gmail.com> <6269173b-20cb-7b47-1ad9-6099a9baa052@owlfolio.org>
 <d65cff0c-7aba-8bb3-9a2f-3d07f20517b4@gmail.com> <ypikk02xv09c.fsf@owlfolio.org> <1f339439-3346-6732-3544-8e0e0a0f9823@mev.co.uk> <ypiksfhiafsn.fsf@owlfolio.org> <6c9645b1-d0e4-4064-0e55-a0bead7d1f71@mev.co.uk> <7d561198-44f7-a64e-06ae-3ee41d156e82@gmail.com>
 <8be4b9ef-7579-fd6a-c2aa-72e92db7adc9@mev.co.uk> <dc7e92ad-8b69-fd78-3547-565ed86fa992@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: svr-ies-mbx-14.mgc.mentorg.com (139.181.222.14) To
 svr-ies-mbx-10.mgc.mentorg.com (139.181.222.10)
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_MED,RCVD_IN_MSPIKE_H2,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, 14 Dec 2022, Alejandro Colomar via Libc-alpha wrote:

> What's the difference, and why isn't it part of the basic character set?

Apart from the point discussed about how making them part of the basic 
character set would interact with other rules involving that character 
set, the basic source character set consists of those characters that have 
some specified role in the C syntax.  There is no specified role for $ @ ` 
in the C syntax - they can only be used in string or character literals 
(modulo the question of whether $ should still be allowed as an 
implementation-defined character in identifiers, see N3046) and have no 
special role to play there.

-- 
Joseph S. Myers
joseph@codesourcery.com
