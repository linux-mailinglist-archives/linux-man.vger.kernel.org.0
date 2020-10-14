Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 20BD128E4DE
	for <lists+linux-man@lfdr.de>; Wed, 14 Oct 2020 18:52:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727440AbgJNQwG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Oct 2020 12:52:06 -0400
Received: from mout.gmx.net ([212.227.17.22]:37569 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726459AbgJNQwG (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 14 Oct 2020 12:52:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1602694317;
        bh=OMMfVnoPze8HdtATFfDP/mCvV2qbTbx4rU6EPGWvk0I=;
        h=X-UI-Sender-Class:To:Cc:From:Subject:Date;
        b=G6KgCjYPYsNDal/3C6pe6EoUUGrKGxhTeVtv5guLEbg6X+DifYRfytrDexnvKFYDs
         cUYCeoXYov5HXcAB3QFl4aF1+6ZenoNHPvloMVMUqgV99fLFM8FcjQCKuPVA3CXXjm
         iDSrWzL5uVHG7bpHE9Had6fqpDMTnkZAJJ6a3puY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.123.70] ([178.202.41.107]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1Mnaof-1k14DQ2bCv-00jdKK; Wed, 14
 Oct 2020 18:51:57 +0200
To:     Matthew Garrett <mjg59@google.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        Ard Biesheuvel <ardb@kernel.org>,
        David Howells <dhowells@redhat.com>
From:   Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: man kernel_lockdown.7
Autocrypt: addr=xypron.glpk@gmx.de; prefer-encrypt=mutual; keydata=
 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 Eg==
Message-ID: <8831670f-1e25-d05b-02ab-c370e35a4143@gmx.de>
Date:   Wed, 14 Oct 2020 18:51:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K1:gncmbtuLH/BtjZFO4XYUwdG4+xHXc/MKDliyv/deHj9ShkqYnv6
 D8bAak+vJtJoTb8snyslrOI8R7KvJc42laIWIRyR8iJBsTEy83j4ukddLxG0YGiy0kBcvXN
 l44UhIGsgNXX5/fiIZaBYYw9s61Tb+d9DxFORsRtUsjWaJlTYc7hfoPpoFIM5ajyeUvFWof
 9C/EdJtzMHr8iEyZ9jwMw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6AokRVjx6iQ=:o3cpMt2lT3mRk1zcirTx4G
 SclatftsWYCzDgQEiWWq4ErHmJ2Zn1tMFsDHSQjDjeO1vHMy7/t7JrSp93+ExQqFZzrcWG5Pv
 Jo0uyGtsmnyvSQVw9Fp79KMDQaWeCwZUMn6zdAWIbb2GWK6M5VE0hIRaDzkICMSYFcmv/g3o5
 1FERNrThDzW7C8ZZCPimEaywvo/S9SJhFmiAaSrWxeXntSirCyEGFgUJ50lWCL42DGbDIZ+Yd
 /Rcak57W5njeRviHu22ZIfjEjmqsvukxGXQqSoLAWGOGRmrDnaQNkY18nSRLUI6U3Vq+ydcd8
 6JGhkDqp22paOqnIRBwlTWnyBh0c4bEidQlNgATaXI30SKYpq2YcbOHIc52wsy+bNj5sFnfvg
 6tlFF5DPkrhJxSC2cdwdjU1c2YL8pPns9L6onm3ilFZzDwlVlNgD+bweALPexzHfzm+9MLIhF
 B9T3/cejHIf5vnUCuNoAKvEgIYbWyobb8+hr8BbLTh18h2TPWaT/tO4YmeyUlXOvNdVp86CuK
 fO3fwkf/uszstONPSswO+p0PvzxbXIGiR3iAnzmIRqeI9LTkohyFhCe2idu7yDHj2hbVWidI3
 Djohf5WdpWADKOLMsjGoTGqttk05UhlHEgICAk7dpSWrLyhYOROlzKDHr2VB5oxNUfMj0jSkJ
 s97VaOFIGFq26MVsvUrziQi5ws+GsAvzK1Cx8TDNmmO+xC/t78uf8qNmy5aIy5QYXBOSdJB2H
 n+hBRNWC4m3RZ+l6ZG8+Ifirg+fKLaOj5iH2WNK2h2H3EmAVeGreNLpXQJgm/zYnBijTi+0Z8
 7+l7zKE7vPn6EqZJ9RHzG4GWQDk1rojzpEtmVgDpXIMQflOSm1J139Brt4BEzzhJPH7yX+jlz
 M3ZNVsVJjZT8DVAxrKNQ==
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Matthew,

With commit 000d388ed3bbed ("security: Add a static lockdown policy
LSM") you added the following line to security/lockdown/lockdown.c:

pr_notice("Kernel is locked down from %s; see man kernel_lockdown.7\n"

The manpage is not available on

https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git.

I found a rather outdated draft by David here:

https://lwn.net/Articles/735564/

Is anybody working on it?

Best regards

Heinrich
