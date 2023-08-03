Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 091A576EE1B
	for <lists+linux-man@lfdr.de>; Thu,  3 Aug 2023 17:28:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236268AbjHCP2M (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 3 Aug 2023 11:28:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235000AbjHCP15 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 3 Aug 2023 11:27:57 -0400
Received: from 1.mo552.mail-out.ovh.net (1.mo552.mail-out.ovh.net [178.32.96.117])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA9193582
        for <linux-man@vger.kernel.org>; Thu,  3 Aug 2023 08:27:54 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.108.20.68])
        by mo552.mail-out.ovh.net (Postfix) with ESMTPS id 55BF12BDAC;
        Thu,  3 Aug 2023 15:18:42 +0000 (UTC)
Received: from jwilk.net (37.59.142.101) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Thu, 3 Aug
 2023 17:18:41 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-101G00463d56a5d-f342-4543-9de5-aa1e7f74712b,
                    44CEA4E0D18A6FB412F8E5608A5167C771A212C7) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.232
Date:   Thu, 3 Aug 2023 17:18:38 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
CC:     Alejandro Colomar <alx@kernel.org>, <linux-man@vger.kernel.org>
Subject: Re: [PATCH] fsync.2: no writability requirements, must operate on
 directories
Message-ID: <20230803151838.4smugh4p6nsgpopo@jwilk.net>
References: <oc67sum2hk73gl7oim7kitbqac6gcursqcxf6j2qjxzzdzgbxq@afirbuozty2f>
 <4aa54e57-6601-088f-f143-23846af2b783@kernel.org>
 <mwgvw3rh3tv6v3vhwf3osw7s6rs4hmfuapbycnqkk57anpqpsp@qoevitjgkjod>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <mwgvw3rh3tv6v3vhwf3osw7s6rs4hmfuapbycnqkk57anpqpsp@qoevitjgkjod>
X-Originating-IP: [37.59.142.101]
X-ClientProxiedBy: DAG1EX1.mxp6.local (172.16.2.1) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: f28c232a-a8f1-470d-825c-6eecb84443e5
X-Ovh-Tracer-Id: 14218426973740586973
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 35
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedviedrkedvgdekhecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecufghrlhcuvffnffculdefhedmnecujfgurhepfffhvfevuffkfhggtggugfgjihesthekredttddtjeenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepteegvdfgudeugefffedtffeufeetvdfgtdetkeeivefhhfeugfehueeivefgieejnecukfhppeduvdejrddtrddtrddupdefjedrheelrddugedvrddutddupdehrddujedvrddvheehrddvfedvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeojhifihhlkhesjhifihhlkhdrnhgvtheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohepnhgrsghijhgrtgiilhgvfigvlhhisehnrggsihhjrggtiihlvgifvghlihdrgiihiidprghlgieskhgvrhhnvghlrdhorhhgpdhlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehhedvpdhmohguvgepshhmthhpohhuth
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* наб <nabijaczleweli@nabijaczleweli.xyz>, 2023-08-03 16:20:
>Replace the FUD

Do you mean to imply that this paragraph was added in bad faith?
Because that's how it sounds.

-- 
Jakub Wilk
