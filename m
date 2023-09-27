Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 646497B02CF
	for <lists+linux-man@lfdr.de>; Wed, 27 Sep 2023 13:26:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231528AbjI0L0E (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 27 Sep 2023 07:26:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231485AbjI0LZv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 27 Sep 2023 07:25:51 -0400
X-Greylist: delayed 394 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 27 Sep 2023 04:25:46 PDT
Received: from mail.aegee.org (mail.aegee.org [144.76.142.78])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42F701BF
        for <linux-man@vger.kernel.org>; Wed, 27 Sep 2023 04:25:45 -0700 (PDT)
Received: from webmail.aegee.org (localhost [127.0.0.1])
        by mail.aegee.org (8.17.2/8.17.2) with ESMTP id 38RBJBfv1209551
        for <linux-man@vger.kernel.org>; Wed, 27 Sep 2023 11:19:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aegee.org; s=k4096;
        t=1695813551; i=dkim+sm-localhost@aegee.org;
        bh=TlDPtvkmsDVWMe+ACFM0C+9jZDCvLN6Ee1F9D19tKk0=;
        h=Date:From:To:Subject;
        b=Wh17ZFa+IZbxwx0mwkoxoD+JwmRHMXX+NynNsZ+mUlUcic/B48LV/ZOobYHd3SguE
         3MZvSMBDzKgvUOI1CYE/Aldv7JIa/266UlcjwQrAPghqnLEYPu0Dwfto+UDl8zyBO0
         +2oRWlCtINFEbVL+EVehrx4s++oWlDULY7PK76Rtu85XZWResTqMH0MH4rsb8oiKRp
         NFk9ci+gGBbwLTMk8ufqlAJH9Sl62R8qoMuxoOn58BGEDTVMLPMEG/fSWGZAFgIQTD
         JinT0oS62yyAoep8lr4/ciVGp95Viicsth8zkAOU8yH0ThFvPljNxc/sqF/3YQmsOy
         ny6MDysVADBlDcwWQ8sbbnhHYszapuFz6lGkaGFPnG5H6hVVM2dmDbe7JhJrzDlCWk
         cuA7XOPEgc65D2pdGmHND2PbikRwYKRyTjnOU7EHUcFnHluVghkODTf2UWJLKwZse4
         T5jUaWKoWnVzRNFi15+EkyUyq4Zjsh97Tsa8vW7dmR9oOyPmKmxT+9iIcPsroEAoAA
         zDVU8DX+Be1nbcu4twMW0O8EZrkwMYWs7sPaqyYLfoLqflh+ndInhHGH8VCI7jE0XY
         aerwUnvN9zCLGhkmpAzdX8vquCAY2NGGATkSAtWaRJ1HaXkuCYkpVdj8wUYasw89fm
         ufqQz1Pt5F9aZr27C78rRScA=
Authentication-Results: mail.aegee.org/38RBJBfv1209551; dkim=none
MIME-Version: 1.0
Date:   Wed, 27 Sep 2023 13:19:11 +0200
From:   =?UTF-8?Q?=D0=94=D0=B8=D0=BB=D1=8F=D0=BD_=D0=9F=D0=B0=D0=BB=D0=B0?=
         =?UTF-8?Q?=D1=83=D0=B7=D0=BE=D0=B2?= <dilyan.palauzov@aegee.org>
To:     linux-man@vger.kernel.org
Subject: No NOTES section in snprintf(3)
Message-ID: <4407b14d09ba3237517b18f2c0fa8ce1@aegee.org>
X-Sender: dilyan.palauzov@aegee.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_40,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_NONE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello,

the manual page of snprintf() — 
https://man7.org/linux/man-pages/man3/snprintf.3.html contains:

DESCRIPTION …  See NOTES.
RETURN VALUE … (See also below under NOTES.)

There are no “NOTES” in that manual page.

The manual page likely means CAVEATS instead of NOTES (or vice versa), 
as there is a CAVEATS section.


Moreover https://man7.org/mtk/contact.html contains “NOTE: to make a 
man-pages bug report, email linux-man@vger.kernel.org.”  where 
“man-pages bug report” is a hyperlink to 
https://www.kernel.org/doc/man-pages/reporting_bugs.html .

That page https://www.kernel.org/doc/man-pages/reporting_bugs.html does 
not exist.

Kind regards
   Dilyan
