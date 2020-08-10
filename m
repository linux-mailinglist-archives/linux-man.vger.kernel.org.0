Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 163CD24068D
	for <lists+linux-man@lfdr.de>; Mon, 10 Aug 2020 15:27:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726748AbgHJN1I convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Mon, 10 Aug 2020 09:27:08 -0400
Received: from mx-relay84-hz1.antispameurope.com ([94.100.133.252]:49777 "EHLO
        mx-relay84-hz1.antispameurope.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726571AbgHJN1H (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 Aug 2020 09:27:07 -0400
X-Greylist: delayed 344 seconds by postgrey-1.27 at vger.kernel.org; Mon, 10 Aug 2020 09:27:07 EDT
Received: from smtpsrv2.fokus.fraunhofer.de ([195.37.77.176]) by mx-relay84-hz1.antispameurope.com;
 Mon, 10 Aug 2020 15:21:20 +0200
Received: from heisenberg.fokus.fraunhofer.de (heisenberg.fokus.fraunhofer.de [10.147.9.211])
        by smtpsrv2.fokus.fraunhofer.de (8.14.7/8.14.4) with ESMTP id 07ADLEV4108883
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
        Mon, 10 Aug 2020 15:21:14 +0200
Received: from heisenberg.fokus.fraunhofer.de (10.147.9.211) by
 heisenberg.fokus.fraunhofer.de (10.147.9.211) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2044.4; Mon, 10 Aug 2020 15:20:50 +0200
Received: from kraxon (10.147.9.171) by heisenberg.fokus.fraunhofer.de
 (10.147.9.211) with Microsoft SMTP Server id 15.1.2044.4 via Frontend
 Transport; Mon, 10 Aug 2020 15:20:44 +0200
Date:   Mon, 10 Aug 2020 15:20:45 +0200
From:   Joerg Schilling <Joerg.Schilling@fokus.fraunhofer.de>
To:     <mtk.manpages@gmail.com>, <larryd.kbd@gmail.com>,
        <austin-group-l@opengroup.org>
CC:     <zackw@panix.com>, <linux-man@vger.kernel.org>,
        <libc-alpha@sourceware.org>, <joseph@codesourcery.com>,
        <gwc@opengroup.org>, <fweimer@redhat.com>, <enh@google.com>,
        <eggert@cs.ucla.edu>, <carlos@redhat.com>, <ajosey@opengroup.org>
Subject: Re: Pseudoterminal terminology in POSIX
Message-ID: <5f3149ad.G/e/1Ac5SJF38sra%Joerg.Schilling@fokus.fraunhofer.de>
References: <CALxWeYrisuzEPVEHOQSFJ8G_=8-VTAOTNBquyszOZMid7YfT=Q@mail.gmail.com>
 <6425d636-7f48-3a73-ef0e-7bb5b991360c@gmail.com>
In-Reply-To: <6425d636-7f48-3a73-ef0e-7bb5b991360c@gmail.com>
User-Agent: Heirloom mailx 12.5 7/5/10
MIME-Version: 1.0
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 8BIT
X-KSE-ServerInfo: heisenberg.fokus.fraunhofer.de, 9
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean, bases: 10.08.2020 08:22:00
X-KSE-Attachment-Filter-Triggered-Rules: Clean
X-KSE-Attachment-Filter-Triggered-Filters: Clean
X-KSE-BulkMessagesFiltering-Scan-Result: protection disabled
X-cloud-security-sender: joerg.schilling@fokus.fraunhofer.de
X-cloud-security-recipient: linux-man@vger.kernel.org
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay84-hz1.antispameurope.com with 7E47F172009D
X-cloud-security-connect: smtpsrv2.fokus.fraunhofer.de[195.37.77.176], TLS=1, IP=195.37.77.176
X-cloud-security: scantime:.4320
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Larry Dwyer via austin-group-l at The Open Group <austin-group-l@opengroup.org> wrote:

> How about the "control" side and the "terminal" side (of the paired 
> device files)?

The Solaris man pty page since a really long time has this:

    By default, 48 pseudo-terminal pairs are configured as  follows:

       /dev/pty[p-r][0-9a-f] controller devices
       /dev/tty[p-r][0-9a-f] slave devices

so I would be OK with "controller" side and "terminal" side.


Jörg

-- 
 EMail:joerg@schily.net                    (home) Jörg Schilling D-13353 Berlin
    joerg.schilling@fokus.fraunhofer.de (work) Blog: http://schily.blogspot.com/
 URL: http://cdrecord.org/private/ http://sf.net/projects/schilytools/files/'
