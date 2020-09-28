Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 55BD227AF32
	for <lists+linux-man@lfdr.de>; Mon, 28 Sep 2020 15:39:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726328AbgI1Nje (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Sep 2020 09:39:34 -0400
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:34767 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726310AbgI1Nje (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Sep 2020 09:39:34 -0400
X-Greylist: delayed 558 seconds by postgrey-1.27 at vger.kernel.org; Mon, 28 Sep 2020 09:39:33 EDT
Received: from mxplan6.mail.ovh.net (unknown [10.108.1.111])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 1E3365FA6155;
        Mon, 28 Sep 2020 15:30:03 +0200 (CEST)
Received: from jwilk.net (37.59.142.98) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2044.4; Mon, 28 Sep
 2020 15:30:02 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-98R00234b9d735-5d2a-4b47-a285-f3e4eb2db77c,
                    E59E0FB000DF6B722774C90AA5B0F90FBF80FBAC) smtp.auth=jwilk@jwilk.net
Date:   Mon, 28 Sep 2020 15:29:59 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: Re: [PATCH 1/2] system_data_types.7: srcfix
Message-ID: <20200928132959.x4koforqnzohxh5u@jwilk.net>
References: <20200925080330.184303-1-colomar.6.4.3@gmail.com>
 <20200927061015.4obt73pdhyh7wecu@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200927061015.4obt73pdhyh7wecu@localhost.localdomain>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.98]
X-ClientProxiedBy: DAG8EX1.mxp6.local (172.16.2.71) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 652e279e-0551-49b9-a54e-7f596dde21a5
X-Ovh-Tracer-Id: 16526803258329323418
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrvdeigdeggecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujggfihesthdtredttdervdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhephfefvdefheevhfekledtjeegleetfedvfedvuddvfefgudeuiedtieetvddthefgnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrdelkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden!

In groff_man_style(7) you wrote:
>Unused macro arguments are more often simply omitted, or good style 
>suggests that a more appropriate macro be chosen, that earlier 
>arguments are more important than later ones, or that arguments have 
>identical significance such that skipping any is superfluous.

After 15 minutes of gawking at this sentence, I still don't understand 
what are you trying to say here. The sentence should be either 
thoroughly rephrased or removed.

-- 
Jakub Wilk
