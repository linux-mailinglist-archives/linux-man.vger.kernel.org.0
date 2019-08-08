Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7463D8688D
	for <lists+linux-man@lfdr.de>; Thu,  8 Aug 2019 20:18:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732835AbfHHSSi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 8 Aug 2019 14:18:38 -0400
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1]:44228 "EHLO
        mx0a-001b2d01.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1731038AbfHHSSi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 8 Aug 2019 14:18:38 -0400
Received: from pps.filterd (m0098399.ppops.net [127.0.0.1])
        by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id x78I7J7e125985
        for <linux-man@vger.kernel.org>; Thu, 8 Aug 2019 14:18:37 -0400
Received: from pps.reinject (localhost [127.0.0.1])
        by mx0a-001b2d01.pphosted.com with ESMTP id 2u8py94tdn-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
        for <linux-man@vger.kernel.org>; Thu, 08 Aug 2019 14:18:37 -0400
Received: from m0098399.ppops.net (m0098399.ppops.net [127.0.0.1])
        by pps.reinject (8.16.0.27/8.16.0.27) with SMTP id x78II4wI005834
        for <linux-man@vger.kernel.org>; Thu, 8 Aug 2019 14:18:36 -0400
Received: from ppma02dal.us.ibm.com (a.bd.3ea9.ip4.static.sl-reverse.com [169.62.189.10])
        by mx0a-001b2d01.pphosted.com with ESMTP id 2u8py94td4-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Thu, 08 Aug 2019 14:18:36 -0400
Received: from pps.filterd (ppma02dal.us.ibm.com [127.0.0.1])
        by ppma02dal.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id x78IBKoa002155;
        Thu, 8 Aug 2019 18:18:35 GMT
Received: from b03cxnp08025.gho.boulder.ibm.com (b03cxnp08025.gho.boulder.ibm.com [9.17.130.17])
        by ppma02dal.us.ibm.com with ESMTP id 2u51w665j6-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Thu, 08 Aug 2019 18:18:35 +0000
Received: from b03ledav004.gho.boulder.ibm.com (b03ledav004.gho.boulder.ibm.com [9.17.130.235])
        by b03cxnp08025.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id x78IIYNK34734410
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Thu, 8 Aug 2019 18:18:34 GMT
Received: from b03ledav004.gho.boulder.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id A83277805E;
        Thu,  8 Aug 2019 18:18:34 +0000 (GMT)
Received: from b03ledav004.gho.boulder.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 20EBE78060;
        Thu,  8 Aug 2019 18:18:34 +0000 (GMT)
Received: from leobras.br.ibm.com (unknown [9.18.235.40])
        by b03ledav004.gho.boulder.ibm.com (Postfix) with ESMTP;
        Thu,  8 Aug 2019 18:18:33 +0000 (GMT)
Message-ID: <cd250ed29f6d3e5609422afc1ddbc003719fd3b1.camel@linux.ibm.com>
Subject: Re: [PATCH] vmsplice.2: SPLICE_F_GIFT became no-op
From:   Leonardo Bras <leonardo@linux.ibm.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Date:   Thu, 08 Aug 2019 15:18:30 -0300
In-Reply-To: <20190801222417.14413-1-leonardo@linux.ibm.com>
References: <20190801222417.14413-1-leonardo@linux.ibm.com>
Content-Type: multipart/signed; micalg="pgp-sha256";
        protocol="application/pgp-signature"; boundary="=-aVSZNJOmu1mTFwOOSZhF"
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-08-08_07:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=978 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908080162
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--=-aVSZNJOmu1mTFwOOSZhF
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-08-01 at 19:24 -0300, Leonardo Bras wrote:
> As explained in splice.2, SPLICE_F_MOVE became a no-op, and since it
> is needed to use page gifting, it made SPLICE_F_GIFT a no-op too.
>=20
> I took a look in current code, and found no use of this flag:
> When enabled, it sets PIPE_BUF_FLAG_GIFT,which is only checked in
> user_page_pipe_buf_steal, which is only used on
> user_page_pipe_buf_ops, as a .steal component.
>=20
> But, in the whole kernel code, there is no calling of a steal()
> function, making me believe this flag is not used anymore.
>=20
> Signed-off-by: Leonardo Bras <leonardo@linux.ibm.com>
> ---
>  man2/vmsplice.2 | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/man2/vmsplice.2 b/man2/vmsplice.2
> index 17834607b..94fb86142 100644
> --- a/man2/vmsplice.2
> +++ b/man2/vmsplice.2
> @@ -123,6 +123,11 @@ if this flag is not specified, then a subsequent
>  .B SPLICE_F_MOVE
>  must copy the pages.
>  Data must also be properly page aligned, both in memory and length.
> +Starting in Linux 2.6.21, it is a no-op, because the
> +.B SPLICE_F_MOVE
> +also became a no-op on
> +.BR splice (2)
> +.
>  .\" FIXME
>  .\" It looks like the page-alignment requirement went away with
>  .\" commit bd1a68b59c8e3bce45fb76632c64e1e063c3962d


Any feedback on this patch?

--=-aVSZNJOmu1mTFwOOSZhF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEMdeUgIzgjf6YmUyOlQYWtz9SttQFAl1MZ3YACgkQlQYWtz9S
ttSFNxAAkW+Ouyxh9m8j2qttnaxi4oZp/sDXGl8b4r/EfTgwOWGnyUZEXsEaN+Lb
q3vewi3/5qZVsIRa+iDYAvVl9CseO8cZa1S/E8xT/2QNYjy1OFf2j9FVfcRtErXH
ASliz2/V9pJC4vD+CSoH2Vt8pO0tg8x3+pz3CEEqygaTvt8kGf8bhMRTsWgPUqc3
TEnw1fmqnfNxgSVL+pLUAQvPkOlMqP+SxO6Ecdf6ODa3RRdjwQeC3ByylsTdHMEj
a0nofe7aDrjUzk9lNoKPrZHKPavatl2Q30YJXcDdbLtgc+SA1C2XRB+4j7PH3LTL
ChRfNaadcosURF9pNvFy6byT+k5oeIuxRhg+4Z0bsFYGYEtyFSps1RrfOgKM5pX1
O+GcuHR4hnyUMQe/8Hp7lQdVIPAlvHrxKfmohXZjuOse9nREisYbJ3pGZbbkyolw
A52h7vmEj708tlC+5mWiW0eCoJF9eU+skKpbZ5m9HveYiAXBBLzXvByjhLVSsAzj
n3TkkHsTf7uowcwZnYgHuOvoPzEcbPmvDsjpomf1Cxiag+p9CI5uK7Rb/rTDHvb1
yOWIv7u1dQL0C5q2gXbstXn+ZtGhatDwVZBsL7axVZEg8jKY7FIaLRF5A5+S/d0s
+4+29Dos+GjP1EfvtFEQb9SG1NFd+V+ZXvZr47+s/4j4415yTpY=
=IaHD
-----END PGP SIGNATURE-----

--=-aVSZNJOmu1mTFwOOSZhF--

