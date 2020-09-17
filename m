Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DB0A226D975
	for <lists+linux-man@lfdr.de>; Thu, 17 Sep 2020 12:47:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726446AbgIQKqk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Sep 2020 06:46:40 -0400
Received: from smtpout1.mo804.mail-out.ovh.net ([79.137.123.220]:53693 "EHLO
        smtpout1.mo804.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726480AbgIQKqW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Sep 2020 06:46:22 -0400
X-Greylist: delayed 445 seconds by postgrey-1.27 at vger.kernel.org; Thu, 17 Sep 2020 06:46:21 EDT
Received: from mxplan6.mail.ovh.net (unknown [10.108.4.102])
        by mo804.mail-out.ovh.net (Postfix) with ESMTPS id 0EBBB62999E7;
        Thu, 17 Sep 2020 12:38:50 +0200 (CEST)
Received: from jwilk.net (37.59.142.99) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2044.4; Thu, 17 Sep
 2020 12:38:49 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-99G003c12eac0d-f6dc-4d49-a275-21d568e436b6,
                    3D0FA99E2FE06D49D178AFDD43481E01CF719E2A) smtp.auth=jwilk@jwilk.net
Date:   Thu, 17 Sep 2020 12:38:48 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: Re: [draft] Code of conduct for Linux man-pages project
Message-ID: <20200917103848.uf2yejfedifllpby@jwilk.net>
References: <02fd2df7-a3dc-c28d-a929-f126f676b3e0@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <02fd2df7-a3dc-c28d-a929-f126f676b3e0@gmail.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.99]
X-ClientProxiedBy: DAG3EX1.mxp6.local (172.16.2.21) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: e0182f2e-0118-4d73-a390-4673e3456b97
X-Ovh-Tracer-Id: 4375528513962694554
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrtdeggdefvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepfffhvffukfhfgggtugfgjggfihesthekredttderjeenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepvdehffduvdfgleduledvleekgeeuveduhfdtkeevkeekudejkeffkeehvdefhfeknecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddrleelnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Michael Kerrisk <mtk.manpages@gmail.com>, 2020-09-17, 10:41:
>I've put a draft up at:
>https://www.kernel.org/doc/man-pages/code_of_conduct.html

Some technical issues:

* The document is in UTF-8, but the encoding is not declared anywhere. 
As a consequence, my Firefox shows mojibake â€™ instead of curly 
apostrophe.

* It should be </li> instead of </l>.

* Semicolon after "&gt" is missing in one place.

-- 
Jakub Wilk
