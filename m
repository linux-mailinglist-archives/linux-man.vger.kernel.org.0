Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CAEE15689A8
	for <lists+linux-man@lfdr.de>; Wed,  6 Jul 2022 15:38:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232234AbiGFNhf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 6 Jul 2022 09:37:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233321AbiGFNha (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 6 Jul 2022 09:37:30 -0400
X-Greylist: delayed 362 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 06 Jul 2022 06:37:28 PDT
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [81.169.146.163])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1D6E5F66
        for <linux-man@vger.kernel.org>; Wed,  6 Jul 2022 06:37:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1657114284;
    s=strato-dkim-0002; d=xn--jrgen-sauermann-zvb.de;
    h=Date:Message-ID:Cc:Subject:From:To:Cc:Date:From:Subject:Sender;
    bh=FhIqwr26FITgcGE1cZTXuSbXGNFMwGcG2HO9aUPbMTc=;
    b=kOf2+dWRBXNfU5p77nNDILcCc/8Sjrs2/+7Ctoxwk1cEYPDyWD4EzXoq1DuN9kixK3
    04g3RA8/htleECBSYbLC3cSlmcMgCY7qNJEWq0p0frTEwTxa657vNH97SvV1JzGNoj3r
    49xON9XL5AfxPjm8lkI4z00e6IN69FjvmYCP3bNSsMDuzF+A8Jrhb3o6hOs6fYuKZt1f
    umwSRPVSbeMVCQvn+BdejDXRcxa3JdpeC3KbvcagFXrSmDEnSOHcolXXJ7LXLeFZIOZ7
    VE+Jmwffohafk2zswIz5it9UdhqjzJ4K+yyfKa3uYh4yKgIwbEJWPX4tYYIizc5Krppr
    rkHg==
Authentication-Results: strato.com;
    dkim=none
X-RZG-AUTH: ":IW0NeWCwdbJy35dEGbhINhrCL06TqIk89uRQzJQEHECld5uF6JeNB+O1P0jUjLJ2qo9S22E1SowfsWnRffSaA+L6AwzL6/2nZK4BsD0/9lRy6SUeIAmaljWuww=="
X-RZG-CLASS-ID: mo00
Received: from [IPv6:2a02:8108:98bf:fa0a:b62e:99ff:fe2f:364d]
    by smtp.strato.de (RZmta 47.46.1 AUTH)
    with ESMTPSA id dcd42ay66DVOdXr
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
        (Client did not present a certificate);
    Wed, 6 Jul 2022 15:31:24 +0200 (CEST)
To:     linux-man@vger.kernel.org
From:   =?UTF-8?Q?Dr=2e_J=c3=bcrgen_Sauermann?= 
        <mail@xn--jrgen-sauermann-zvb.de>
Subject: [patch] for the printf.3 man page
Cc:     alx.manpages@gmail.com
Message-ID: <d1bb4b12-935e-9fdb-9f60-7fa6ee7bea25@xn--jrgen-sauermann-zvb.de>
Date:   Wed, 6 Jul 2022 15:31:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="------------66FF7464F00B3C645C664EF7"
Content-Language: en-GB
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_20,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.
--------------66FF7464F00B3C645C664EF7
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

I would like to propose the attached patch for the printf(3) man page.

The patch adds the following sentence to the description of the ' flag 
(aka. thousands separator):

Note  also  that the default locale of a C program is "C" whose
locale information indicates no thousands' grouping  character.
Therefore,  without a prior setlocale(3) no thousands' grouping
  characters will be printed.


Best Regards,
Jürgen Sauermann


--------------66FF7464F00B3C645C664EF7
Content-Type: text/x-patch; charset=UTF-8;
 name="printf.3.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="printf.3.patch"

380a381,384
> Note also that the default locale of a C program is "C" whose locale information
> indicates no thousands' grouping character. Therefore, without a prior
> .BR setlocale (3)
> no thousands' grouping characters will be printed.

--------------66FF7464F00B3C645C664EF7--
