Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A226659D59
	for <lists+linux-man@lfdr.de>; Fri, 30 Dec 2022 23:58:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235677AbiL3W6c (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Dec 2022 17:58:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235671AbiL3W6b (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Dec 2022 17:58:31 -0500
X-Greylist: delayed 882 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 30 Dec 2022 14:58:28 PST
Received: from mail-01-1.mymagenta.at (mail-01-1.mymagenta.at [80.109.253.246])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E24BA1B9E2
        for <linux-man@vger.kernel.org>; Fri, 30 Dec 2022 14:58:28 -0800 (PST)
Received: from [192.168.232.140] (helo=ren-mail-psmtp-mg54.mail.mymagenta.at)
        by mail-01.mymagenta.at with esmtp (Exim 4.93)
        (envelope-from <aaron_ng@inode.at>)
        id 1pBO6K-001pKd-0x
        for linux-man@vger.kernel.org; Fri, 30 Dec 2022 23:43:44 +0100
Received: from [192.168.178.32] ([85.127.181.33])
        by ren-mail-psmtp-mg54.mail.mymagenta.at with ESMTPA
        id BO6DppfSPide9BO6JpMnwd; Fri, 30 Dec 2022 23:43:44 +0100
X-Env-Mailfrom: aaron_ng@inode.at
X-Env-Rcptto: linux-man@vger.kernel.org
X-SourceIP: 85.127.181.33
X-CNFS-Analysis: v=2.4 cv=V8Yebcri c=1 sm=1 tr=0 ts=63af69a0
 a=F7jJJw0I8AULWD3B5xnGMg==:117 a=F7jJJw0I8AULWD3B5xnGMg==:17 a=GcyzOjIWAAAA:8
 a=--0P5llU2j4A:10 a=XJH1uMPmMx8A:10 a=IkcTkHD0fZMA:10
 a=KnCWC9jKtc4QZuCzZjsA:9 a=QEXdDO2ut3YA:10 a=U_-AqwUHEsgA:10
 a=oxbJiMDY3v4A:10 a=NNXpXIuLykEA:10 a=hQL3dl6oAZ8NdCsdz28n:22
X-Authenticated-Sender: aaron_ng@inode.at
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=inode.at;
        s=201801custpemceu; t=1672440224;
        bh=ePU4gLvMfip07c26nUTA0Dv7QWoROkjQo6ei3oDqHGQ=;
        h=Date:To:From:Subject:Cc;
        b=vZ0TuIB4g7cRbAnLIWy6jMj71hywEQAlnPfuh/ofLoOWGEAVnuR8tB8HEhZ/b3hws
         tcv+tGE7RnC9m1o/hac5FN2Tntf2IIpw1LfyCh8E/z9vFgWEYzdzAYwm+thZENZ7DB
         5Uk3w9AMIbNpQ14o8Fm1wMRgjfafJHaCYOoa+pK0HndpYpa81PWPskj9ArFrIoruID
         g2idLxfTMoam8Dfq78paLXjuSbcJ6NGWCun1myFJ5KtWjdhEomCPDB0ztn0tErrN64
         TYK2Aj1H08Cpj8MzkM47/Or0EUJELsCkBGR5Hgw+MR/LJyD6r9YafiHSjuZqy1iPri
         bS5slHx3p5WVA==
Message-ID: <4e7589dc-2c5c-d705-e2a9-4b0878bfce3d@inode.at>
Date:   Fri, 30 Dec 2022 23:43:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US, de-DE
To:     mtk.manpages@gmail.com
From:   Aaron Peter Bachmann <aaron_ng@inode.at>
Subject: misleading note in
 https://man7.org/linux/man-pages/man3/bstring.3.html
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4xfCHYUQuQ+AxI3Qn2zTn1fr8kqxoazY5OviSjyakttdvN3V+NtOTjBJdgTkg4YKCPPUJB1dc9j1+4YD1w2FHAJcTxlRinHlCvR8izinlyfukoREODUbET
 watgDMSk1OvIU9HahZ/bfP5w3GDeDDDgbEp297lYEPCyENMuxVz1RS7nSI7Z7GXt3wkNDy9AKpGRheRhLdMohVISCRLyEuE11Vo2mUdQm4Ry6/FoC/z16VG2
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello!

The note section in https://man7.org/linux/man-pages/man3/bstring.3.html 
says:

The functions*bcmp*(),*bcopy*(), and*bzero*() are obsolete.  Use
        *memcmp*(),*memcpy*(), and*memset*() instead.

The std-replacement replacement for bcopy() in NOT memcpy() but memmove().
Thus it should say:

The functions*bcmp*(),*bcopy*(), and*bzero*() are obsolete.  Use
        *memcmp*(),*memmove*(), and*memset*() instead.

Regards, Aaron Peter Bachmann

