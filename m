Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E471A7E172B
	for <lists+linux-man@lfdr.de>; Sun,  5 Nov 2023 23:00:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229922AbjKEWAV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Nov 2023 17:00:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229949AbjKEWAU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Nov 2023 17:00:20 -0500
X-Greylist: delayed 5189 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 05 Nov 2023 14:00:18 PST
Received: from SMTP-HCRC-200.brggroup.vn (unknown [42.112.212.144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44DE2BF
        for <linux-man@vger.kernel.org>; Sun,  5 Nov 2023 14:00:18 -0800 (PST)
Received: from SMTP-HCRC-200.brggroup.vn (localhost [127.0.0.1])
        by SMTP-HCRC-200.brggroup.vn (SMTP-CTTV) with ESMTP id 9E295171EC;
        Mon,  6 Nov 2023 01:58:08 +0700 (+07)
Received: from zimbra.hcrc.vn (unknown [192.168.200.66])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by SMTP-HCRC-200.brggroup.vn (SMTP-CTTV) with ESMTPS id 96C31171EB;
        Mon,  6 Nov 2023 01:58:08 +0700 (+07)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.hcrc.vn (Postfix) with ESMTP id 348121B81FC6;
        Mon,  6 Nov 2023 01:58:10 +0700 (+07)
Received: from zimbra.hcrc.vn ([127.0.0.1])
        by localhost (zimbra.hcrc.vn [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id GgMNXK-OM3ff; Mon,  6 Nov 2023 01:58:10 +0700 (+07)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.hcrc.vn (Postfix) with ESMTP id 03AFD1B82534;
        Mon,  6 Nov 2023 01:58:10 +0700 (+07)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra.hcrc.vn 03AFD1B82534
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hcrc.vn;
        s=64D43D38-C7D6-11ED-8EFE-0027945F1BFA; t=1699210690;
        bh=WOZURJ77pkiMUL2pPLC14ifVPRvyTQIBEQmxuN1ezAA=;
        h=MIME-Version:To:From:Date:Message-Id;
        b=SGBwkmk1r4MBhYKz+rZ5tg57YK6JenFkFQPgtpM/+V1BnxPxdgaZfpxEY6S/Opzco
         PNQrDs72Rw5XfaLvu3aMgmIiA4jaEzjhnmSw6fAxXMZW2OobOOPs+SL85yA8Czc5rT
         usXLKug4q+wQCqJn79uGk0OoZiLGKhWI8K2xLuDhrcM0TV9DRyZmOOT8zPY9czaKPX
         Gs/Ajnu9anOAK+AC1SnqIPBMRkSuCVKRxS8i4nvvIEgnF0nbLP/faPokd2RBZwLJzv
         il9+/JhD1n6UhDWASSDURhDicT+IDVGyC0+endUSZB5RQYxBOEKo05Q6ZLa5fchJJb
         H0eqBv+f5dlvg==
X-Virus-Scanned: amavisd-new at hcrc.vn
Received: from zimbra.hcrc.vn ([127.0.0.1])
        by localhost (zimbra.hcrc.vn [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id TQitkfHVF81D; Mon,  6 Nov 2023 01:58:09 +0700 (+07)
Received: from [192.168.1.152] (unknown [51.179.100.52])
        by zimbra.hcrc.vn (Postfix) with ESMTPSA id 95ADC1B81FC6;
        Mon,  6 Nov 2023 01:58:03 +0700 (+07)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Description: Mail message body
Subject: =?utf-8?b?4oKsIDEwMC4wMDAuMDAwPw==?=
To:     Recipients <ch.31hamnghi@hcrc.vn>
From:   ch.31hamnghi@hcrc.vn
Date:   Sun, 05 Nov 2023 19:57:50 +0100
Reply-To: joliushk@gmail.com
Message-Id: <20231105185803.95ADC1B81FC6@zimbra.hcrc.vn>
X-Spam-Status: No, score=2.7 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FORGED_REPLYTO,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Goededag,
Ik ben mevrouw Joanna Liu en een medewerker van Citi Bank Hong Kong.
Kan ik =E2=82=AC 100.000.000 aan u overmaken? Kan ik je vertrouwen


Ik wacht op jullie reacties
Met vriendelijke groeten
mevrouw Joanna Liu

