Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 21DBC1FBEA5
	for <lists+linux-man@lfdr.de>; Tue, 16 Jun 2020 21:01:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729103AbgFPTAZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 16 Jun 2020 15:00:25 -0400
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:44771 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725911AbgFPTAZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 16 Jun 2020 15:00:25 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.108.4.66])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 8F8823D736E4;
        Tue, 16 Jun 2020 21:00:21 +0200 (CEST)
Received: from jwilk.net (37.59.142.95) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1779.2; Tue, 16 Jun
 2020 21:00:20 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-95G0013ff4f6f6-40bf-491f-90a0-14dc57d268b9,EA4FC07D03CFA6829A52CBF0A4826B255F878F92) smtp.auth=jwilk@jwilk.net
Date:   Tue, 16 Jun 2020 21:00:17 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
CC:     Michael Kerrisk <mtk.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: [PATCH] fread.3: Explain that file position is moved after
 calling fread()/fwrite()
Message-ID: <20200616190017.5y3pwpb22w2jeqls@jwilk.net>
References: <20200616182659.12365-1-arkadiusz@drabczyk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200616182659.12365-1-arkadiusz@drabczyk.org>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.95]
X-ClientProxiedBy: DAG3EX2.mxp6.local (172.16.2.22) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 61a23e65-777a-497f-9e74-94305a726a75
X-Ovh-Tracer-Id: 1640717641196296157
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduhedrudejtddgudefhecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujggfihesthdtredttdervdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhephfefvdefheevhfekledtjeegleetfedvfedvuddvfefgudeuiedtieetvddthefgnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrdelheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Arkadiusz Drabczyk <arkadiusz@drabczyk.org>, 2020-06-16, 20:26:
>+The file position indicator for the stream is advanced by the number
>+of characters successfully read or written.

s/characters/bytes/

-- 
Jakub Wilk
