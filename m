Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6A62246D9C6
	for <lists+linux-man@lfdr.de>; Wed,  8 Dec 2021 18:32:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234854AbhLHRgU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Dec 2021 12:36:20 -0500
Received: from cluster-b.mailcontrol.com ([85.115.56.190]:58016 "EHLO
        cluster-b.mailcontrol.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237946AbhLHRgT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Dec 2021 12:36:19 -0500
Received: (from mailcontrol@localhost)
        by rly04b.srv.mailcontrol.com (MailControl) with ESMTP id 1B8HWjdj177607;
        Wed, 8 Dec 2021 17:32:45 GMT
Received: from rly04b.srv.mailcontrol.com (localhost [127.0.0.1])
        by localhost (envelope-sender Andrei.PODOPLELOV@3ds.com) (MIMEDefang) with ESMTP id 1B8HWg2M176925
        (TLS bits=256 verify=OK); Wed, 08 Dec 2021 17:32:45 +0000 (GMT)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
        by rly04b.srv.mailcontrol.com (MailControl) id 1B8HWgnd176919;
        Wed, 8 Dec 2021 17:32:42 GMT
Received: from 3ds-ag-las-smtp-out.3ds.com ([160.231.203.240])
        by rly04b-eth0.srv.mailcontrol.com (envelope-sender <Andrei.PODOPLELOV@3ds.com>) (MIMEDefang) with ESMTP id 1B8HWfiZ176578
        (TLS bits=256 verify=OK); Wed, 08 Dec 2021 17:32:42 +0000 (GMT)
Received: from AG-LAS-EXMBX06.dsone.3ds.com (10.106.33.156) by
 AG-LAS-EXMBX06.dsone.3ds.com (10.106.33.156) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.17; Wed, 8 Dec 2021 17:32:36 +0000
Received: from AG-LAS-EXMBX06.dsone.3ds.com ([fe80::4501:7756:3ffd:7924]) by
 AG-LAS-EXMBX06.dsone.3ds.com ([fe80::4501:7756:3ffd:7924%3]) with mapi id
 15.01.2375.017; Wed, 8 Dec 2021 17:32:36 +0000
From:   PODOPLELOV Andrei <Andrei.PODOPLELOV@3ds.com>
To:     "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "alx.manpages@gmail.com" <alx.manpages@gmail.com>
Subject: [patch] --filter option in ld: srcfix
Thread-Topic: [patch] --filter option in ld: srcfix
Thread-Index: AdfhXsdHZbzLdtfhR8+/bMDhuuzVmQK+cwzg
Date:   Wed, 8 Dec 2021 17:32:36 +0000
Message-ID: <64a06ee4b44648ccad3dfee1f3d1af1a@3ds.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [172.22.69.10]
x-tm-snts-smtp: 3DF75C6B4442D9D5BC7FFFEC892C7C9009141167C53A522EB462BF0FF2964EA72000:8
Content-Type: multipart/mixed;
        boundary="_002_64a06ee4b44648ccad3dfee1f3d1af1a3dscom_"
MIME-Version: 1.0
X-MailControl-OutInfo: MTYzODk4NDc2NDpGUEtleTEucHJpdjo60pu9JlAEfGip6vmK9OwM7kVfFBQ4M6xEaOkzHUTLUtCSOsnU/fbfhOMhRI6HqQeXUzvpnLXURK6kMjsSZGJazqcrAzzDeVnRmXbdS00zhMWCDHD6g76nFHJ1w6BO+Q7pyBv8BwWO8YPWVMMKBkfoT9VhgIESwzfbLwAcB/65sQ+LJA/0yDEcdFz2vtGxKVlyTVRIWJfXNrih6kAlLisavB5IoOUZBPspgIqvZQz5EYIahGvw+2xrt6j4FhhfmVHNH7xczEnvKbvuOihIjtOOv8UfMmAoXnPW5u4AvJRcjBVngNv4Trf6KjxJk+C901fTLYe5YbiPhmjr+nrpe6N4
X-Scanned-By: MailControl 44278.2116 (www.mailcontrol.com) on 160.231.203.240
X-Mailcontrol-Refers-To: 1B8HWg2M176925
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=3ds.com; h=from:to:cc:subject:date:message-id:content-type:mime-version; s=fpkey6354-1; bh=EHh0w2XSGBZWOdhW0NvzxSVqxnv0icyYa5O8MYtdAWM=; b=Y7a1N2mlVRKdnfUr7EwOyAL3ssZ/l5nfVs1mHDJu/89OrDQDbn/Tg2hue+2FPHuKql8MxYnPTPvq2oRFOlplwSnYEV/YXdFmLq/kjnzSQi3rs54EK4PePFD8YWJBF/iyIYtuqF6iz/E/vdcgrHLAKpPrT1oFDF8fmqSGnZdWbHLdckWqZYZMdWIT6t9r16JmKYJBCzUfoUB+GDK0I5m8YATqVK+/KIYd9JBIW8bVXu8Yriwq8uT4/ASsCBZyVQJy9d6LYwHM8IWgOlvOc7eI1IqsVFfYF3gMZtdePoFa6+Ev2ca1e3aIxmmqTqyPH/bdT6bOyO51ey89Vek9V3T05w==
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--_002_64a06ee4b44648ccad3dfee1f3d1af1a3dscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Michael,

First of all I should admit I am a big fan of your "The Linux Programming I=
nterface" book. I've been Windows guy since mid-90th and your book helped m=
e to become a local Linux expert.

Working recently on a bug in our product, happening on Ubuntu, but not on o=
ur official RHEL, I found that it caused by -filter option in ld. Unfortuna=
tely the description of this option in https://man7.org/linux/man-pages/man=
1/ld.1.html is not very clear and that delayed my resolution.
I was lucky to find https://docs.oracle.com/cd/E23824_01/html/819-0690/chap=
ter4-4.html, containing a step-by-step sample, I played with, and figured h=
ow it all works. My final sample is attached.
In this change I want to emphasize the relationship between the two shared =
objects.

The current doc says:

       --filter=3Dname
           When creating an ELF shared object, set the internal
           DT_FILTER field to the specified name.  This tells the
           dynamic linker that the symbol table of the shared object
           which is being created should be used as a filter on the
           symbol table of the shared object name.

           If you later link a program against this filter object, then,
           when you run the program, the dynamic linker will see the
           DT_FILTER field.  The dynamic linker will resolve symbols
           according to the symbol table of the filter object as usual,
           but it will actually link to the definitions found in the
           shared object name.  Thus the filter object can be used to
           select a subset of the symbols provided by the object name.

I believe it would be beneficial to change it to something like:

       --filter=3Dname
           When creating an ELF shared object (a "filter"), set the
           internal DT_FILTER field to the specified name - another
           ELF shared object (a "filtee"). This tells the dynamic linker
           that the symbol table of the "filter" should be used to
           select a subset of the symbols provided by the "filtee".

           When you link a program against this "filter" and run it,
           the dynamic linker will see the DT_FILTER field and resolve
           symbols according to the symbol table of the "filter" object
           as usual. However, when a certain symbol of the "filter" is
           also present in "filtee", it will actually link to the
           definition in the "filtee".

Best Regards,

Andrei PODOPLELOV
Senior Software Architect - Customer Success, Spatial
Office: +1 508 305 5247
mailto:Andrei.PODOPLELOV@3ds.com
http://www.3ds.com/
Spatial Corp. | 310 Interlocken Parkway, Suite 200 | Broomfield, CO 80021 |=
 United States

This email and any attachments are intended solely for the use of the indiv=
idual or entity to whom it is addressed and may be confidential and/or priv=
ileged.

If you are not one of the named recipients or have received this email in e=
rror,

(i) you should not read, disclose, or copy it,

(ii) please notify sender of your receipt by reply email and delete this em=
ail and all attachments,

(iii) Dassault Syst=E8mes does not accept or assume any liability or respon=
sibility for any use of or reliance on this email.


Please be informed that your personal data are processed according to our d=
ata privacy policy as described on our website. Should you have any questio=
ns related to personal data protection, please contact 3DS Data Protection =
Officer at 3DS.compliance-privacy@3ds.com<mailto:3DS.compliance-privacy@3ds=
.com>


For other languages, go to https://www.3ds.com/terms/email-disclaimer

--_002_64a06ee4b44648ccad3dfee1f3d1af1a3dscom_
Content-Type: application/x-zip-compressed; name="ld --filter option.zip"
Content-Description: ld --filter option.zip
Content-Disposition: attachment; filename="ld --filter option.zip"; size=924;
	creation-date="Wed, 08 Dec 2021 17:25:00 GMT";
	modification-date="Wed, 08 Dec 2021 17:25:00 GMT"
Content-Transfer-Encoding: base64

UEsDBBQAAAAIAA5TiFMJEu5faAAAANIAAAAcAAAAbGQgLS1maWx0ZXIgb3B0aW9uL2J1aWxkLnR4
dONKT05W0M1XyMlMcsvMKUlN1SvOV9AtzkgsSk1R0E0L8HRWSIOIJ3NxoaktwlQLUVykl6wQw6UA
BLoROZl52alFCrpFBYklGbZ6GOK6EB22yA6A21RQlJ+ukJuYmQc0EMVWIMBhARcAUEsDBBQAAAAI
AOVZeFNEILvOdAAAAKQAAAAbAAAAbGQgLS1maWx0ZXIgb3B0aW9uL2ZpbHRlZS5jdYtBCoMwFET3
OcXgxrYUPYD0AD1GTSb4IfmB+KWF0rtXgltn8Tbz3jjiGWELofwYkighK3zJmWoM9/YFRlExKYpY
S0aUZKyDx1tSwkxsK8Pg/PKquM07HuhawwBR9M1n303ucGIpl6v7OuyrtK3qWfCb3B9QSwMEFAAA
AAgAEld4U9ksuTg+AAAASgAAABsAAABsZCAtLWZpbHRlciBvcHRpb24vZmlsdGVyLmNTzsxLzilN
SVWwKS5JSUlN08uw4+JKzkgsUtBKAhK2Cn6hPj7WMKG0/HwNTa5qLgUgKEotKS3Kg8rXWnMBAFBL
AwQUAAAACAC8bnFTS0mbsGYAAAByAAAAGQAAAGxkIC0tZmlsdGVyIG9wdGlvbi9tYWluLmNTzsxL
zilNSVWwKS5JyczXy7Dj4kqtKEktylNIzkgsUtBKSizSUdBKy8/X0LTm4irLz0xRyE3MzNPQ5Krm
UgCCgqLMvJI0DSWgCoXMYgXVYisFoBYIMyZPSUcBrFUHJAg0oNaaCwBQSwECFAAUAAAACAAOU4hT
CRLuX2gAAADSAAAAHAAAAAAAAAABACAAAAAAAAAAbGQgLS1maWx0ZXIgb3B0aW9uL2J1aWxkLnR4
dFBLAQIUABQAAAAIAOVZeFNEILvOdAAAAKQAAAAbAAAAAAAAAAEAIAAAAKIAAABsZCAtLWZpbHRl
ciBvcHRpb24vZmlsdGVlLmNQSwECFAAUAAAACAASV3hT2Sy5OD4AAABKAAAAGwAAAAAAAAABACAA
AABPAQAAbGQgLS1maWx0ZXIgb3B0aW9uL2ZpbHRlci5jUEsBAhQAFAAAAAgAvG5xU0tJm7BmAAAA
cgAAABkAAAAAAAAAAQAgAAAAxgEAAGxkIC0tZmlsdGVyIG9wdGlvbi9tYWluLmNQSwUGAAAAAAQA
BAAjAQAAYwIAAAAA

--_002_64a06ee4b44648ccad3dfee1f3d1af1a3dscom_--
