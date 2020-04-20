Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A05911B04D3
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 10:51:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725896AbgDTIvr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 04:51:47 -0400
Received: from smtpout1.mo804.mail-out.ovh.net ([79.137.123.220]:39191 "EHLO
        smtpout1.mo804.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725865AbgDTIvq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 04:51:46 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.109.146.15])
        by mo804.mail-out.ovh.net (Postfix) with ESMTPS id 0D93E36DE4BB;
        Mon, 20 Apr 2020 10:51:45 +0200 (CEST)
Received: from jwilk.net (37.59.142.96) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1779.2; Mon, 20 Apr
 2020 10:51:44 +0200
Date:   Mon, 20 Apr 2020 10:51:42 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     Helge Kreutzmann <debian@helgefjell.de>,
        <linux-man@vger.kernel.org>
Subject: Re: Errors in man pages, here: msr(4): Content
Message-ID: <20200420085142.yprljwogzustfuxt@jwilk.net>
References: <20200419064811.GA31233@Debian-50-lenny-64-minimal>
 <CAKgNAkh=65cH6S2xigJF6hjEMu+90=Co+GDV8OSzHU0C2XVYPQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKgNAkh=65cH6S2xigJF6hjEMu+90=Co+GDV8OSzHU0C2XVYPQ@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.96]
X-ClientProxiedBy: DAG4EX1.mxp6.local (172.16.2.31) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: bfe4874a-f3d8-4b06-8b6f-5db8407f8326
X-Ovh-Tracer-Id: 7106680213302204381
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduhedrgeefgddtkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepfffhvffukfhfgggtuggjfghisehttdertddtredvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddrleeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Michael Kerrisk (man-pages) <mtk.manpages@gmail.com>, 2020-04-19, 22:48:
>>/dev/cpu not on my system
>Maybe this is a Debian thing? I have /dev/cpu on my Fedora system.

FWIW, it does exist on my Debian system:

   $ sudo modprobe msr
   $ find /dev/cpu
   /dev/cpu
   /dev/cpu/1
   /dev/cpu/1/msr
   /dev/cpu/0
   /dev/cpu/0/msr

-- 
Jakub Wilk
