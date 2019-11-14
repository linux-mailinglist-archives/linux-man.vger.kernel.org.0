Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0B6F5FCE31
	for <lists+linux-man@lfdr.de>; Thu, 14 Nov 2019 19:56:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726818AbfKNS4U (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 14 Nov 2019 13:56:20 -0500
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]:32278 "EHLO
        mx0a-001b2d01.pphosted.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725976AbfKNS4U (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 14 Nov 2019 13:56:20 -0500
Received: from pps.filterd (m0098421.ppops.net [127.0.0.1])
        by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id xAEIlQUY078016;
        Thu, 14 Nov 2019 13:56:18 -0500
Received: from pps.reinject (localhost [127.0.0.1])
        by mx0a-001b2d01.pphosted.com with ESMTP id 2w9cemr9ch-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Thu, 14 Nov 2019 13:56:18 -0500
Received: from m0098421.ppops.net (m0098421.ppops.net [127.0.0.1])
        by pps.reinject (8.16.0.27/8.16.0.27) with SMTP id xAEInRwU082695;
        Thu, 14 Nov 2019 13:56:17 -0500
Received: from ppma03wdc.us.ibm.com (ba.79.3fa9.ip4.static.sl-reverse.com [169.63.121.186])
        by mx0a-001b2d01.pphosted.com with ESMTP id 2w9cemr9ca-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Thu, 14 Nov 2019 13:56:17 -0500
Received: from pps.filterd (ppma03wdc.us.ibm.com [127.0.0.1])
        by ppma03wdc.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id xAEIeeij018099;
        Thu, 14 Nov 2019 18:56:17 GMT
Received: from b01cxnp22035.gho.pok.ibm.com (b01cxnp22035.gho.pok.ibm.com [9.57.198.25])
        by ppma03wdc.us.ibm.com with ESMTP id 2w5n36kx89-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Thu, 14 Nov 2019 18:56:17 +0000
Received: from b01ledav005.gho.pok.ibm.com (b01ledav005.gho.pok.ibm.com [9.57.199.110])
        by b01cxnp22035.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id xAEIuGsf53346778
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Thu, 14 Nov 2019 18:56:16 GMT
Received: from b01ledav005.gho.pok.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 2B935AE05C;
        Thu, 14 Nov 2019 18:56:16 +0000 (GMT)
Received: from b01ledav005.gho.pok.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 90A8AAE062;
        Thu, 14 Nov 2019 18:56:15 +0000 (GMT)
Received: from leobras.br.ibm.com (unknown [9.18.235.137])
        by b01ledav005.gho.pok.ibm.com (Postfix) with ESMTP;
        Thu, 14 Nov 2019 18:56:15 +0000 (GMT)
Message-ID: <cfd8b4f5318e31538e24a6f3427da53056af07a9.camel@linux.ibm.com>
Subject: Re: [PATCH] vmsplice.2: SPLICE_F_GIFT became no-op
From:   Leonardo Bras <leonardo@linux.ibm.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Jens Axboe <axboe@kernel.dk>
Cc:     linux-man@vger.kernel.org
Date:   Thu, 14 Nov 2019 15:56:10 -0300
In-Reply-To: <b65e1f8f-34b4-0db6-bd7a-7b866b29af7a@gmail.com>
References: <20190801222417.14413-1-leonardo@linux.ibm.com>
         <b65e1f8f-34b4-0db6-bd7a-7b866b29af7a@gmail.com>
Content-Type: multipart/signed; micalg="pgp-sha256";
        protocol="application/pgp-signature"; boundary="=-x9uUVFp34BFKc9YO503s"
User-Agent: Evolution 3.34.1 (3.34.1-1.fc31) 
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-11-14_05:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1910280000 definitions=main-1911140157
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--=-x9uUVFp34BFKc9YO503s
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2019-09-13 at 14:55 +0200, Michael Kerrisk (man-pages) wrote:
> Hello Jens,
>=20
> Would you be willing to take a look at this man-pages bug report
> relating to vmsplice()?
>=20
> Thanks,
>=20
> Michael

Hello Michael, Jens,
Any update about this patch?

Kind Regards,

>=20
> On 8/2/19 12:24 AM, Leonardo Bras wrote:
> > As explained in splice.2, SPLICE_F_MOVE became a no-op, and since
> > it
> > is needed to use page gifting, it made SPLICE_F_GIFT a no-op too.
> >=20
> > I took a look in current code, and found no use of this flag:
> > When enabled, it sets PIPE_BUF_FLAG_GIFT,which is only checked in
> > user_page_pipe_buf_steal, which is only used on
> > user_page_pipe_buf_ops, as a .steal component.
> >=20
> > But, in the whole kernel code, there is no calling of a steal()
> > function, making me believe this flag is not used anymore.
> >=20
> > Signed-off-by: Leonardo Bras <leonardo@linux.ibm.com>
> > ---
> >  man2/vmsplice.2 | 5 +++++
> >  1 file changed, 5 insertions(+)
> >=20
> > diff --git a/man2/vmsplice.2 b/man2/vmsplice.2
> > index 17834607b..94fb86142 100644
> > --- a/man2/vmsplice.2
> > +++ b/man2/vmsplice.2
> > @@ -123,6 +123,11 @@ if this flag is not specified, then a
> > subsequent
> >  .B SPLICE_F_MOVE
> >  must copy the pages.
> >  Data must also be properly page aligned, both in memory and
> > length.
> > +Starting in Linux 2.6.21, it is a no-op, because the
> > +.B SPLICE_F_MOVE
> > +also became a no-op on
> > +.BR splice (2)
> > +.
> >  .\" FIXME
> >  .\" It looks like the page-alignment requirement went away with
> >  .\" commit bd1a68b59c8e3bce45fb76632c64e1e063c3962d
> >=20
>=20
>=20

--=-x9uUVFp34BFKc9YO503s
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEMdeUgIzgjf6YmUyOlQYWtz9SttQFAl3No0oACgkQlQYWtz9S
ttTr/RAA0GEignu61j9UyZnN2hJHGRVLGFFtbKMKOKvofMDToegYivcCISCY8tI3
CkQaZYsYxFIcAFx9dLp9kV9BU7i2WP5WzF7LzqPhIkzy8GXnoHYyNXIu9LBd+zmR
2JSO3SePST7qJU/+F0lh7ETMshEcVZwiY6fpN9n2ko9GRu72Zqb7XxQ9KxmSsj8J
QTTOrx3JMggCSE48kvD14NKjxUxADlPvki8E3t7EoJt7Lwws+Ky1XHQpr8hEZzUD
Ui8bqeIPFzD055HqMrS2rB59HrTu3BLLRHsj1PoKvCCmWx+TPd3vsJCox4MtzEGC
jOS23Lx/khJ5fd8ZNa/ZnJ6da/nrn9nOpQBxv571aWnfr2jk6cEW/TuDCVczY15U
tr2kOEf3Llkhgd429if7X2M53pYnkr/+xkItDSU8yRHnbvGICtBYa98ErYWkCtwc
IQAoMgkUUXOdcEuQuE6XG+jB09FF9pjDXccHdGS0T/km2zJmKQZAk6cmAv743MwB
V9yI77ZikeHYdLuqHUIOfqNQimCMv+KFAi0yvE6asMxph8/3o0N2mdERYZevKSaa
nhybmbeKkkebqdIyqjUT6Dmmv82Nqs3slCfiYiOvYkZc4ft6l7mj6wDzAAjuAUfR
32AVCP4pX6SSu5cZrl1i8LleG9LvtEx599iCqteqA2gvS+NI7QQ=
=66va
-----END PGP SIGNATURE-----

--=-x9uUVFp34BFKc9YO503s--

