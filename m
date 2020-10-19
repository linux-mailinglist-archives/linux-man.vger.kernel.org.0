Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1EEC5292D55
	for <lists+linux-man@lfdr.de>; Mon, 19 Oct 2020 20:10:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727681AbgJSSKw convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Mon, 19 Oct 2020 14:10:52 -0400
Received: from smtpout1.mo804.mail-out.ovh.net ([79.137.123.220]:38513 "EHLO
        smtpout1.mo804.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1727328AbgJSSKw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 19 Oct 2020 14:10:52 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.108.4.83])
        by mo804.mail-out.ovh.net (Postfix) with ESMTPS id EAE936D9E9CC;
        Mon, 19 Oct 2020 20:10:49 +0200 (CEST)
Received: from jwilk.net (37.59.142.105) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2044.4; Mon, 19 Oct
 2020 20:10:48 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-105G00619195125-0ac3-4e75-aba4-900253e0a434,
                    E8413C7AEB430CC4AE896D6CEA009B6B70544B95) smtp.auth=jwilk@jwilk.net
Date:   Mon, 19 Oct 2020 20:10:47 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
CC:     Michael Kerrisk <mtk.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: \- vs - (Was [Re: [PATCH 2/3] system_data_types.7: Add
 'clock_t'])
Message-ID: <20201019181047.palj3nbvozlvnoqg@jwilk.net>
References: <20201017213758.9270-1-colomar.6.4.3@gmail.com>
 <20201017213758.9270-2-colomar.6.4.3@gmail.com>
 <e9162722-25f4-6d00-00c4-73ffb4fb6528@gmail.com>
 <706d3eea-60f8-c208-0cd4-3412ebfef263@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8BIT
In-Reply-To: <706d3eea-60f8-c208-0cd4-3412ebfef263@gmail.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.105]
X-ClientProxiedBy: DAG2EX2.mxp6.local (172.16.2.12) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: a889cece-dc77-4562-8900-07d110b1bab3
X-Ovh-Tracer-Id: 15467894395443009501
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrjedugdduvdefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtugfgjggfihesthhqredttdervdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepffffgeeljedthefgueejteduvddukeekjeegieevtdffteegkeejtdelgeeiiedvnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutdehnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar <colomar.6.4.3@gmail.com>, 2020-10-19, 19:40:
>Then, in the following code (taken from printf.3)
>the escape is wrong (unneeded) by those guidelines?:
>
>[[
>.SH NAME
>printf, fprintf, dprintf, sprintf, snprintf, vprintf, vfprintf, vdprintf,
>vsprintf, vsnprintf \- formatted output conversion
>]]

From the typographical point of view, the most appropriate character 
here would be \(en (en-dash); but for historical reasons, you're 
supposed to use \- (minus sign). This is documented in the man(7) manual 
page, section "Sections".

-- 
Jakub Wilk
