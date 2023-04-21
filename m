Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 05DDB6EA858
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 12:30:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229575AbjDUKaP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 06:30:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229520AbjDUKaO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 06:30:14 -0400
Received: from smtpout2.mo529.mail-out.ovh.net (smtpout2.mo529.mail-out.ovh.net [79.137.123.220])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97122E42
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 03:30:12 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.109.146.56])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 6EBCC213FA;
        Fri, 21 Apr 2023 10:20:00 +0000 (UTC)
Received: from jwilk.net (37.59.142.97) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.23; Fri, 21 Apr
 2023 12:19:59 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-97G002b7dff4c2-fdb2-48b2-9c5a-6b610b1a7380,
                    5A732DE9D2D1B83706EA79E4755B3824E8629304) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.140
Date:   Fri, 21 Apr 2023 12:19:57 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
CC:     Alejandro Colomar <alx.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: [PATCH v7 4/8] regex.3: Improve REG_STARTEND
Message-ID: <20230421101957.3hpuzx4pwgwgjbjg@jwilk.net>
References: <8c4487ff-17c6-f4f6-d8cf-59a82d9daeca@gmail.com>
 <sowec336dkzypq6kjouieoyesyfdejmo3j2err3kc4xcpine4l@2takvti7yrem>
 <5918ccbe-d218-df42-cf0f-5eb7b3354e2b@gmail.com>
 <atartvvgxjv7wk5rvdtiyrxjc22lnsgkf75hy3nz3m7fw3m6j4@i7khsjrvuise>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <atartvvgxjv7wk5rvdtiyrxjc22lnsgkf75hy3nz3m7fw3m6j4@i7khsjrvuise>
X-Originating-IP: [37.59.142.97]
X-ClientProxiedBy: DAG4EX1.mxp6.local (172.16.2.31) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: cf378689-f602-41c0-a965-b48d21e91b50
X-Ovh-Tracer-Id: 7156219812150499293
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 35
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrfedtgedgvdeiucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucgfrhhlucfvnfffucdlfeehmdenucfjughrpeffhffvvefukfhfgggtugfgjghisehtkeertddttdejnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeetgedvgfduueegffeftdffueeftedvgfdtteekieevhffhuefgheeuieevgfeijeenucfkphepuddvjedrtddrtddruddpfeejrdehledrudegvddrleejpdehrddujedvrddvheehrddugedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeojhifihhlkhesjhifihhlkhdrnhgvtheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohepnhgrsghijhgrtgiilhgvfigvlhhisehnrggsihhjrggtiihlvgifvghlihdrgiihiidprghlgidrmhgrnhhprghgvghssehgmhgrihhlrdgtohhmpdhlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehvdelpdhmohguvgepshhmthhpohhuth
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* наб <nabijaczleweli@nabijaczleweli.xyz>, 2023-04-21 04:16:
>/etc/bash.bashrc: line 7: PS1: unbound variable

How come? bash is not supposed to read bashrc if the shell is 
non-interactive (unless you instruct it otherwise).

>Makefile:SHELL := /usr/bin/env bash -Eeuo pipefail

Unrelated, but what is /usr/bin/env for?

-- 
Jakub Wilk
