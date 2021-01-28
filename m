Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E7A6A307405
	for <lists+linux-man@lfdr.de>; Thu, 28 Jan 2021 11:47:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229596AbhA1KrM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 28 Jan 2021 05:47:12 -0500
Received: from mx01-muc.bfs.de ([193.174.230.67]:58512 "EHLO mx01-muc.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231359AbhA1KrK (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 28 Jan 2021 05:47:10 -0500
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx01-muc.bfs.de (Postfix) with ESMTPS id 5A46B20199;
        Thu, 28 Jan 2021 11:46:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1611830778;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=fgWtKIi7UC9hbaHJpu7iv+2juGysAKLxv3yLp0SspP4=;
        b=UKZolz2mfZ9JwwzSyju4BVvCSNVmZBMVsTnieWzUcP2Zd2eAu7ij5TL+ISKuxqO+F54xnk
        wRx7tfgcedf5q8WPDto2ODn49fdkztnxLVOVn/d+RjUcQ3qLwPRG9frHiTYZhBe0OCUuiD
        DV5ZdFkvuhlDwqAEfiSSHF4v73lD+/+7i29wPwmKMP3h3UJXeiaoCPKVvE7TcHIM23X3Lc
        ukf2YVisDvMMFwnerZBn2YsL+sUB0YnP68oQZdVDH9z8W3atzMUezljpZ/CoG9zx0HF6Bv
        KiorITG02Q9kTcdXxrBSdmU1/csKZCmx4lr0Pv8NYPsDJBk8KmZM4t7YAvjOLQ==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2176.2; Thu, 28 Jan
 2021 11:46:17 +0100
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%13]) with mapi id
 15.01.2176.002; Thu, 28 Jan 2021 11:46:17 +0100
From:   Walter Harms <wharms@bfs.de>
To:     Jakub Wilk <jwilk@jwilk.net>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: AW: tcp.7: tcp_retries2 description outdated?
Thread-Topic: tcp.7: tcp_retries2 description outdated?
Thread-Index: AQHW9NZFmR2mZHQvd0ynp9K55/HB3Ko82zCU
Date:   Thu, 28 Jan 2021 10:46:17 +0000
Message-ID: <d84f39690bf547e19baa48165c0288bb@bfs.de>
References: <20210127175703.hdqwnj36oefoqhzf@jwilk.net>
In-Reply-To: <20210127175703.hdqwnj36oefoqhzf@jwilk.net>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.40]
x-tm-as-product-ver: SMEX-14.0.0.3080-8.6.1012-25754.007
x-tm-as-result: No-10-0.281500-5.000000
x-tmase-matchedrid: v0Uhv4cnyYV02v7MbVCNbRvgzEPRJaDEWw/S0HB7eoMTiSW9r3PknDyj
        o+AkzeHqobZq/w1NZJeqaVINmvzjNhrOW8erG8uux5sgyUhLCNvpVMb1xnESMjTPJxSCQcmMeGa
        nbc2gJXqFrhsxj6P8RI4S3q7uV6Oh7igYWrzLr2P/9txSp4wMsfiH64jt3FfENMxGS7Dxq6WS1U
        tCxWBi/+fOVcxjDhcwdYd/loivyRcLbigRnpKlKZvjAepGmdoOmEgHuhxDv8cJXtQ15WM38GGo2
        XhGSGMxxXowZoIbbnVBYxrJJ0Js4/VZoLmzXZKF+wGybE4W1opltZBz6sNV8FNaBeORl5NqNZ7+
        sXnntd8p1H9Ti1Gv8NhK+eyiNpAIEKVQRS3U5Qjj5cAllduzaw==
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10-0.281500-5.000000
x-tmase-version: SMEX-14.0.0.3080-8.6.1012-25754.007
x-tm-snts-smtp: DA7925855AA33260A29221E52FCC5CCD8B09F75E252026501F3333C3554CA5F92000:9
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Spamd-Result: default: False [-1.63 / 7.00];
         ARC_NA(0.00)[];
         TO_DN_EQ_ADDR_SOME(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         TO_DN_SOME(0.00)[];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         DKIM_SIGNED(0.00)[bfs.de:s=dkim201901];
         RCPT_COUNT_TWO(0.00)[2];
         NEURAL_HAM(-0.00)[-1.000];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         SUBJECT_ENDS_QUESTION(1.00)[];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[];
         BAYES_HAM(-2.63)[98.36%]
Authentication-Results: mx01-muc.bfs.de;
        none
X-Spam-Status: No, score=-1.63
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

good point,
did you see this also ?
https://pracucci.com/linux-tcp-rto-min-max-and-tcp-retries2.html

re,
 wh
________________________________________
Von: Jakub Wilk <jwilk@jwilk.net>
Gesendet: Mittwoch, 27. Januar 2021 18:57:03
An: linux-man@vger.kernel.org
Betreff: tcp.7: tcp_retries2 description outdated?

The description of tcp_retries2 in tcp.7 reads:

>The default value is 15, which corresponds to a duration of
>approximately between 13 to 30 minutes, depending on the retransmission
>timeout.

I'm not a networking expert, but I think this description is outdated.
See these kernel commits:
https://git.kernel.org/linus/6fa12c85031485df
https://git.kernel.org/linus/5d7892298a819743

--
Jakub Wilk
