Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B3F094E9137
	for <lists+linux-man@lfdr.de>; Mon, 28 Mar 2022 11:26:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236746AbiC1J1u (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Mar 2022 05:27:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235868AbiC1J1t (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Mar 2022 05:27:49 -0400
X-Greylist: delayed 469 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 28 Mar 2022 02:26:06 PDT
Received: from mx01-sz.bfs.de (mx01-sz.bfs.de [194.94.69.67])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20BB554197
        for <linux-man@vger.kernel.org>; Mon, 28 Mar 2022 02:26:05 -0700 (PDT)
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx01-sz.bfs.de (Postfix) with ESMTPS id 5FB9920110;
        Mon, 28 Mar 2022 11:18:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1648459094;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=n0fynyeYxWTreuvhx+FGXOAalSUfiY01ugECUQujUIw=;
        b=zvIWn1O9Vx263hhkhClCDbLK3g6pn3nO1HLxCf5GDBV+p99Pr4PVqo0DWPBahtEtnheD11
        qDINMIYgTToxfDLS9ImdskzpZjql5lfo0mZN1iC0sg/QmnJnCj4wNlH7JfDVSbKcchzRjX
        DiBNhDcC5h+j2PRTti710dnFTDKjQo6IHern2mBBeEPKfEsHt7sU23pYULmqF07iHxx6JV
        mKhOsob7vcsyNwUhmE2pLvCI7ZZ7w20nH0zplwpIHeojpJxG3QA13yu1Q9jc5PjCqc5tuR
        mvmXg3urXFSLM69xiUu7ZgsydbwUsWWnwDZwISblHD2Ui/EIeXuQ8rLh5LIEjA==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2375.7; Mon, 28 Mar
 2022 11:18:13 +0200
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%13]) with mapi id
 15.01.2375.007; Mon, 28 Mar 2022 11:18:13 +0200
From:   Walter Harms <wharms@bfs.de>
To:     Helge Kreutzmann <debian@helgefjell.de>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
CC:     "mario.blaettermann@gmail.com" <mario.blaettermann@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: AW: Issue in man page proc.5
Thread-Topic: Issue in man page proc.5
Thread-Index: AQHYNtdirX1E5RfgYk6nTeFCZcBe6qzUmbhI
Date:   Mon, 28 Mar 2022 09:18:13 +0000
Message-ID: <789c0d2e4d2d49db8476b6278ad57a7d@bfs.de>
References: <20220313123423.GA22411@Debian-50-lenny-64-minimal>
In-Reply-To: <20220313123423.GA22411@Debian-50-lenny-64-minimal>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.129.18.210]
x-tm-as-product-ver: SMEX-14.0.0.3092-9.0.1000-26798.006
x-tm-as-result: No-10--2.985700-5.000000
x-tmase-matchedrid: 6yXf2grjkv8MPDZrnvcM96zSsZt54aj7npdnAKvzbsHCCTLi01kdO+qV
        yua6EL3ACseo5GIVbMYa+FcKC+9xJy/aTczbsnfWWOE/a/LT3Og6rtY7v1CJpwFEi3LOpoU2o8W
        MkQWv6iVJeFvFlVDkf46HM5rqDwqtq2doxQHnMh80kynuQz8MvRvYdUj6LQW9xRl8izBXtKMuKO
        UK0eJ/TyLBUVTFj4LwSixp4MBifMmmLBCyD/q6qj7ok8+PAXfTKKz2OxxCkpzNG0L98j8bMvraK
        q/vKbWfY+pdIoZ/f0rVm/fNL/ipsw==
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--2.985700-5.000000
x-tmase-version: SMEX-14.0.0.3092-9.0.1000-26798.006
x-tm-snts-smtp: D5DE9FD0DED3B5C0EE85B4933F512BCE09BA7F00CB6D4B79B5466EAF4319A8C22000:9
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Authentication-Results: mx01-sz.bfs.de;
        none
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spamd-Result: default: False [-13.93 / 7.00];
         ARC_NA(0.00)[];
         TO_DN_EQ_ADDR_SOME(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         RCPT_COUNT_THREE(0.00)[4];
         FREEMAIL_ENVRCPT(0.00)[gmail.com];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         TAGGED_RCPT(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         TO_DN_SOME(0.00)[];
         MID_RHS_MATCH_FROM(0.00)[];
         DKIM_SIGNED(0.00)[bfs.de:s=dkim201901];
         BAYES_HAM(-0.43)[78.52%];
         WHITELIST_LOCAL_IP(-15.00)[10.129.90.31];
         NEURAL_HAM(-0.00)[-1.000];
         FREEMAIL_TO(0.00)[helgefjell.de,gmail.com];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org];
         RCVD_COUNT_TWO(0.00)[2];
         SUSPICIOUS_RECIPS(1.50)[]
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

can you add the offending linie ?
________________________________________
Von: Helge Kreutzmann <debian@helgefjell.de>
Gesendet: Sonntag, 13. M=E4rz 2022 13:34:23
An: mtk.manpages@gmail.com
Cc: mario.blaettermann@gmail.com; linux-man@vger.kernel.org
Betreff: Issue in man page proc.5

Without further ado, the following was found:

Issue:    As of linux 5.10.103 the fields differ (more present)

"sl  local_address rem_address   st tx_queue rx_queue tr rexmits  tm-E<gt>w=
hen uid\n"
" 1: 01642C89:0201 0C642C89:03FF 01 00000000:00000001 01:000071BA 00000000 =
0\n"
" 1: 00000000:0801 00000000:0000 0A 00000000:00000000 00:00000000 6F000100 =
0\n"
" 1: 00000000:0201 00000000:0000 0A 00000000:00000000 00:00000000 00000000 =
0\n"
