Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D36CE37F9CD
	for <lists+linux-man@lfdr.de>; Thu, 13 May 2021 16:37:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234540AbhEMOjC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 May 2021 10:39:02 -0400
Received: from beige.elm.relay.mailchannels.net ([23.83.212.16]:20443 "EHLO
        beige.elm.relay.mailchannels.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234575AbhEMOi5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 13 May 2021 10:38:57 -0400
X-Sender-Id: instrampxe0y3a|x-authsender|calestyo@scientia.net
Received: from relay.mailchannels.net (localhost [127.0.0.1])
        by relay.mailchannels.net (Postfix) with ESMTP id DFF4C1037B0;
        Thu, 13 May 2021 14:31:49 +0000 (UTC)
Received: from mailgw-02.dd24.net (100-105-161-122.trex.outbound.svc.cluster.local [100.105.161.122])
        (Authenticated sender: instrampxe0y3a)
        by relay.mailchannels.net (Postfix) with ESMTPA id 0567310376C;
        Thu, 13 May 2021 14:31:39 +0000 (UTC)
X-Sender-Id: instrampxe0y3a|x-authsender|calestyo@scientia.net
Received: from mailgw-02.dd24.net (mailgw-02.dd24.net [193.46.215.43])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384)
        by 100.105.161.122 (trex/6.2.1);
        Thu, 13 May 2021 14:31:49 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: instrampxe0y3a|x-authsender|calestyo@scientia.net
X-MailChannels-Auth-Id: instrampxe0y3a
X-Befitting-Soft: 6eabd825538af9b4_1620916301987_3396631696
X-MC-Loop-Signature: 1620916301987:3707098194
X-MC-Ingress-Time: 1620916301987
Received: from heisenberg.fritz.box (ppp-46-244-246-192.dynamic.mnet-online.de [46.244.246.192])
        (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: calestyo@scientia.net)
        by smtp.dd24.net (Postfix) with ESMTPSA id 218F55FC25;
        Thu, 13 May 2021 14:31:35 +0000 (UTC)
Message-ID: <f795fae3da8d6f8bd527fe66023fa9486ac4acda.camel@scientia.net>
Subject: possible spelling error in console_codes(4)
From:   Christoph Anton Mitterer <calestyo@scientia.net>
To:     mtk.manpages@gmail.com, alx.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Date:   Thu, 13 May 2021 16:31:34 +0200
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hey there

In console_codes(4) it says:
> ECMA-48 Set Graphics Rendition

but I think this should be:
Select Graphic Rendition

see e.g.:
https://www.ecma-international.org/wp-content/uploads/ECMA-48_5th_edition_june_1991.pdf
https://nvlpubs.nist.gov/nistpubs/Legacy/FIPS/fipspub86.pdf
https://en.wikipedia.org/wiki/ANSI_escape_code#SGR_(Select_Graphic_Rendition)_parameters


Cheers,
Chris.

