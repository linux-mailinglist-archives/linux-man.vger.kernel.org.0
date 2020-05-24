Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A5E881DFF58
	for <lists+linux-man@lfdr.de>; Sun, 24 May 2020 16:23:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729004AbgEXOXv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 24 May 2020 10:23:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728875AbgEXOXv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 24 May 2020 10:23:51 -0400
X-Greylist: delayed 722 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 24 May 2020 07:23:50 PDT
Received: from mo6-p05-ob.smtp.rzone.de (mo6-p05-ob.smtp.rzone.de [IPv6:2a01:238:20a:202:5305::8])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 053FCC061A0E
        for <linux-man@vger.kernel.org>; Sun, 24 May 2020 07:23:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1590330229;
        s=strato-dkim-0002; d=xn--jrgen-sauermann-zvb.de;
        h=Date:Message-ID:Subject:From:Cc:To:X-RZG-CLASS-ID:X-RZG-AUTH:From:
        Subject:Sender;
        bh=0qMJH2MklM7DvaWJJSvbgrYUMudmT4TRatDgVElBr6E=;
        b=Q5dTvejrInPBHny3YbFAkN3h91XfOxfsmvkTUrqlZ9F6LLNpDNbwi45G6oDftKJ4sW
        fjJDJKwbcCc0EYV1NlXJzsDkDvriIcQFd4mM5QO2AjtCShn1cca2H3tAggZrzQQ9wTgW
        jSvND+pB+SlCU6cievqrTOKuQPBXc3wpitA4G7CWY0EOn8JWI47ttTRJ41bsupye7cTw
        RkOwxW5agsd99M1qAuOEXVWkLfFBd+q+cUf0jpC5T7xoqiV7tdmgyZTCZ5tKzC7U4OBp
        vyEgtt4Op/OajIXMbrkopnnXogRBoE9+zEY3om0k+bXUKxtgbf/KLqYlatI6Z7IYvDsq
        AeHg==
X-RZG-AUTH: ":IW0NeWCwdbJy35dEGbhINhrCL06TqIk89uRQzJQEHECld5uF6JeNB+O1P0jUjLJ2qo9S0TgrT46Wp8Yne7Wi0g=="
X-RZG-CLASS-ID: mo05
Received: from [192.168.0.110]
        by smtp.strato.de (RZmta 46.7.0 DYNA|AUTH)
        with ESMTPSA id a04429w4OEBhRAZ
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits))
        (Client did not present a certificate);
        Sun, 24 May 2020 16:11:43 +0200 (CEST)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
From:   =?UTF-8?Q?Dr=2e_J=c3=bcrgen_Sauermann?= <mail@juergen-sauermann.de>
Subject: scanf() and friends
Message-ID: <a258513b-a5c3-d772-df3f-e490768b73eb@juergen-sauermann.de>
Date:   Sun, 24 May 2020 16:11:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

not a bug but maybe worthwhile to clarify.

The man pages for the scanf() familiy of functions (scanf(), sscanf(),
fscanf(),
vscanf(), csscanf(), and vfscanf()) state that the conversion specifier
'i' accepts
'0x' or '0X' as an indication for hex numbers.

They do not mention, however, that the  conversion specifiers 'x' and
'X' also
accept (and discard) '0x' or '0X' as prefixes for hex numbers.

This lets me wonder if the fact that my glibc version accepts (and discards)
a 0x prefix in a 'X' conversion is merely a convenience that may
disappear at
some later point in time, or an intended feature on which a programmer may
rely on.

Best Regards,
Jürgen Sauermann
GNU APL

