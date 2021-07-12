Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3AF743C5A4E
	for <lists+linux-man@lfdr.de>; Mon, 12 Jul 2021 13:03:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233015AbhGLJuj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Jul 2021 05:50:39 -0400
Received: from smtpout2.vodafonemail.de ([145.253.239.133]:33786 "EHLO
        smtpout2.vodafonemail.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239274AbhGLJtS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Jul 2021 05:49:18 -0400
Received: from smtp.vodafone.de (smtpa06.fra-mediabeam.com [10.2.0.37])
        by smtpout2.vodafonemail.de (Postfix) with ESMTP id 4287D121E33;
        Mon, 12 Jul 2021 11:46:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nexgo.de;
        s=vfde-smtpout-mb-15sep; t=1626083189;
        bh=iGUTMcTLyiavVB7kvYvm0uNjDw21N+oRVT1Ct66DMLA=;
        h=From:To:Cc:Subject:Date;
        b=hGYeW7+h6JzeScndPLr/w2YQ7mRp/priNLVFmd8/cyJhYbii2DWwRRgw6hyNtUbSg
         fIbj+v1S27kiIEG5Jtn7YQWogMhkvNRkRAV/pN3jGoZkg85y1VRES7f0dcJsCIKmz0
         2xfStQLvaHGljwJq3d1AowwA6lZWoisZZ+U+WPsg=
Received: from H270 (p54805893.dip0.t-ipconnect.de [84.128.88.147])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
        (No client certificate requested)
        by smtp.vodafone.de (Postfix) with ESMTPSA id B5BC71401BC;
        Mon, 12 Jul 2021 09:46:28 +0000 (UTC)
Message-ID: <64D55817DE2A4D0E99757425D9883066@H270>
From:   "Stefan Kanthak" <stefan.kanthak@nexgo.de>
To:     <mtk.manpages@gmail.com>, <alx.manpages@gmail.com>
Cc:     <linux-man@vger.kernel.org>
Subject: wcschr(3): add special case for  NUL, as in strchr(3)
Date:   Mon, 12 Jul 2021 11:37:49 +0200
Organization: Me, myself & IT
MIME-Version: 1.0
Content-Type: text/plain;
        charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Windows Mail 6.0.6002.18197
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.24158
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate: clean
X-purgate-size: 839
X-purgate-ID: 155817::1626083188-00003C24-61D1CC0E/0/0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

in the section return value, strchr(3) and strrchr(3) explicitly
state the behaviour for NUL:

<https://man7.org/linux/man-pages/man3/strstr.3.html#RETURN_VALUE>
<https://man7.org/linux/man-pages/man3/strrchr.3.html#RETURN_VALUE>

|  The terminating null byte is considered part of the string, so
|  that if c is specified as '\0', these functions return a pointer
|  to the terminator.

JFTR: to avoid any possible confusion of "null byte" alias NUL with
      the "null pointer" alias NULL (C macro) or nullptr (C++),
      "null byte" should be replaced with "NUL byte"!

The same explicit statement is but missing from both
<https://man7.org/linux/man-pages/man3/wcschr.3.html#RETURN_VALUE>
and
<https://man7.org/linux/man-pages/man3/wcsrchr.3.html#RETURN_VALUE>
and should be added there.

regards
Stefan
